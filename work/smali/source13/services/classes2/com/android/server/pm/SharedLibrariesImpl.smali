.class public final Lcom/android/server/pm/SharedLibrariesImpl;
.super Ljava/lang/Object;
.source "SharedLibrariesImpl.java"

# interfaces
.implements Lcom/android/server/pm/SharedLibrariesRead;
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# static fields
.field private static final DEBUG_SHARED_LIBRARIES:Z = false

.field private static final ENFORCE_NATIVE_SHARED_LIBRARY_DEPENDENCIES:J = 0x879a9f0L


# instance fields
.field private mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field private final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field private final mObserver:Lcom/android/server/utils/Watcher;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/SharedLibrariesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/SharedLibrariesImpl;)Lcom/android/server/utils/WatchableImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .registers 7
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 127
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$1;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    .line 151
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 152
    iput-object p2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 154
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 155
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "SharedLibrariesImpl.mSharedLibraries"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 157
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 158
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "SharedLibrariesImpl.mStaticLibsByDeclaringPackage"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 162
    invoke-direct {p0}, Lcom/android/server/pm/SharedLibrariesImpl;->registerObservers()V

    .line 163
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 164
    invoke-direct {p0}, Lcom/android/server/pm/SharedLibrariesImpl;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 165
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/SharedLibrariesImpl;)V
    .registers 3
    .param p1, "source"    # Lcom/android/server/pm/SharedLibrariesImpl;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 127
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$1;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    .line 183
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 184
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 186
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 187
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 188
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 189
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 192
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/SharedLibrariesImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    return-void
.end method

.method private addSharedLibraryLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;Landroid/content/pm/SharedLibraryInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "libInfo"    # Landroid/content/pm/SharedLibraryInfo;
    .param p4, "changingLib"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "changingLibSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            ")V"
        }
    .end annotation

    .line 490
    .local p2, "usesLibraryFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 491
    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    return-void

    .line 494
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 495
    .local v0, "pkgForCodePaths":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 496
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz p4, :cond_4a

    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 501
    if-eqz v0, :cond_48

    .line 502
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 503
    :cond_48
    move-object v0, p4

    .line 504
    move-object v1, p5

    .line 507
    :cond_4a
    if-eqz v0, :cond_68

    .line 508
    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 510
    new-instance v2, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p3, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V

    .line 511
    if-eqz v1, :cond_68

    .line 512
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 515
    :cond_68
    return-void
.end method

.method private applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V
    .registers 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "libInfo"    # Landroid/content/pm/SharedLibraryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p3, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 451
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 452
    nop

    .line 453
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v1

    int-to-long v1, v1

    .line 452
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    .line 454
    .local v0, "definedLibrary":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v0, :cond_1f

    .line 455
    invoke-interface {p3, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    .end local v0    # "definedLibrary":Landroid/content/pm/SharedLibraryInfo;
    :cond_1f
    goto :goto_59

    :cond_20
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 458
    nop

    .line 459
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v1

    .line 458
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    .line 460
    .restart local v0    # "definedLibrary":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v0, :cond_38

    .line 461
    invoke-interface {p3, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    .end local v0    # "definedLibrary":Landroid/content/pm/SharedLibraryInfo;
    :cond_38
    goto :goto_59

    .line 464
    :cond_39
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    .local v1, "libraryName":Ljava/lang/String;
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    .line 467
    .local v2, "definedLibrary":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v2, :cond_58

    .line 468
    invoke-interface {p3, v2, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    .end local v1    # "libraryName":Ljava/lang/String;
    .end local v2    # "definedLibrary":Landroid/content/pm/SharedLibraryInfo;
    :cond_58
    goto :goto_41

    .line 473
    :cond_59
    :goto_59
    return-void
.end method

.method private collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 31
    .param p2, "requiredVersions"    # [J
    .param p3, "requiredCertDigests"    # [[Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "libraryType"    # Ljava/lang/String;
    .param p6, "required"    # Z
    .param p7, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J[[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 914
    .local p1, "requestedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "outUsedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    .local p9, "availablePackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local p10, "newLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .line 915
    .local v4, "libCount":I
    const/4 v0, 0x0

    move-object/from16 v5, p8

    move v6, v0

    .end local p8    # "outUsedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v5, "outUsedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v6, "i":I
    :goto_e
    if-ge v6, v4, :cond_219

    .line 916
    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 917
    .local v8, "libName":Ljava/lang/String;
    if-eqz p2, :cond_1e

    aget-wide v9, p2, v6

    goto :goto_20

    .line 918
    :cond_1e
    const-wide/16 v9, -0x1

    :goto_20
    nop

    .line 920
    .local v9, "libVersion":J
    iget-object v0, v1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v11

    .line 921
    :try_start_26
    iget-object v0, v1, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_20e

    move-object/from16 v12, p10

    :try_start_2a
    invoke-static {v8, v9, v10, v0, v12}, Lcom/android/server/pm/SharedLibraryUtils;->getSharedLibraryInfo(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    .line 923
    .local v0, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    monitor-exit v11
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_20a

    .line 924
    const/16 v11, -0x9

    if-nez v0, :cond_6e

    .line 925
    if-nez p6, :cond_3b

    move-object/from16 v14, p9

    move/from16 v16, v4

    goto/16 :goto_1fe

    .line 926
    :cond_3b
    new-instance v13, Lcom/android/server/pm/PackageManagerException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " requires unavailable "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " library "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; failing!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v11, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v13

    .line 934
    :cond_6e
    if-eqz p2, :cond_1ef

    if-eqz p3, :cond_1ef

    .line 935
    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v13

    aget-wide v15, p2, v6

    cmp-long v13, v13, v15

    if-nez v13, :cond_1aa

    .line 941
    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p9

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 942
    .local v13, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v13, :cond_8c

    const/4 v15, 0x0

    goto :goto_90

    :cond_8c
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v15

    .line 943
    .local v15, "libPkg":Landroid/content/pm/SigningDetails;
    :goto_90
    if-eqz v15, :cond_17d

    .line 948
    aget-object v11, p3, v6

    .line 949
    .local v11, "expectedCertDigests":[Ljava/lang/String;
    array-length v1, v11

    move/from16 v16, v4

    .end local v4    # "libCount":I
    .local v16, "libCount":I
    const/4 v4, 0x1

    if-le v1, v4, :cond_141

    .line 951
    const/16 v1, 0x1b

    move/from16 v4, p7

    if-lt v4, v1, :cond_aa

    .line 952
    nop

    .line 953
    invoke-virtual {v15}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 952
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_bb

    .line 954
    :cond_aa
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/pm/Signature;

    .line 955
    invoke-virtual {v15}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v18

    const/16 v17, 0x0

    aget-object v18, v18, v17

    aput-object v18, v1, v17

    .line 954
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v1

    :goto_bb
    nop

    .line 961
    .local v1, "libCertDigests":[Ljava/lang/String;
    array-length v4, v11

    array-length v7, v1

    if-ne v4, v7, :cond_114

    .line 968
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 969
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 971
    array-length v4, v1

    .line 972
    .local v4, "certCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_c8
    if-ge v7, v4, :cond_10c

    .line 973
    move/from16 v17, v4

    .end local v4    # "certCount":I
    .local v17, "certCount":I
    aget-object v4, v1, v7

    move-object/from16 v18, v1

    .end local v1    # "libCertDigests":[Ljava/lang/String;
    .local v18, "libCertDigests":[Ljava/lang/String;
    aget-object v1, v11, v7

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 972
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v17

    move-object/from16 v1, v18

    goto :goto_c8

    .line 974
    :cond_df
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v7

    .end local v7    # "j":I
    .local v19, "j":I
    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " requires differently signed "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " library; failing!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, -0x9

    invoke-direct {v1, v7, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 972
    .end local v17    # "certCount":I
    .end local v18    # "libCertDigests":[Ljava/lang/String;
    .end local v19    # "j":I
    .restart local v1    # "libCertDigests":[Ljava/lang/String;
    .restart local v4    # "certCount":I
    .restart local v7    # "j":I
    :cond_10c
    move-object/from16 v18, v1

    move/from16 v17, v4

    move/from16 v19, v7

    .line 980
    .end local v1    # "libCertDigests":[Ljava/lang/String;
    .end local v4    # "certCount":I
    .end local v7    # "j":I
    goto/16 :goto_1f3

    .line 962
    .restart local v1    # "libCertDigests":[Ljava/lang/String;
    :cond_114
    move-object/from16 v18, v1

    .end local v1    # "libCertDigests":[Ljava/lang/String;
    .restart local v18    # "libCertDigests":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " requires differently signed "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " library; failing!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, -0x9

    invoke-direct {v1, v7, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 983
    .end local v18    # "libCertDigests":[Ljava/lang/String;
    :cond_141
    const/4 v1, 0x0

    aget-object v4, v11, v1

    invoke-static {v4, v1}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 985
    .local v1, "digestBytes":[B
    invoke-virtual {v15, v1}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v4

    if-eqz v4, :cond_150

    goto/16 :goto_1f3

    .line 986
    :cond_150
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    .end local v1    # "digestBytes":[B
    .local v17, "digestBytes":[B
    const-string v1, "Package "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " requires differently signed "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " library; failing!"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v7, -0x9

    invoke-direct {v4, v7, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 944
    .end local v11    # "expectedCertDigests":[Ljava/lang/String;
    .end local v16    # "libCount":I
    .end local v17    # "digestBytes":[B
    .local v4, "libCount":I
    :cond_17d
    move/from16 v16, v4

    .end local v4    # "libCount":I
    .restart local v16    # "libCount":I
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " requires unavailable "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " library; failing!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, -0x9

    invoke-direct {v1, v7, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 936
    .end local v13    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v15    # "libPkg":Landroid/content/pm/SigningDetails;
    .end local v16    # "libCount":I
    .restart local v4    # "libCount":I
    :cond_1aa
    move/from16 v16, v4

    .end local v4    # "libCount":I
    .restart local v16    # "libCount":I
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " requires unavailable "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " library "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " version "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 939
    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; failing!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x9

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 934
    .end local v16    # "libCount":I
    .restart local v4    # "libCount":I
    :cond_1ef
    move-object/from16 v14, p9

    move/from16 v16, v4

    .line 992
    .end local v4    # "libCount":I
    .restart local v16    # "libCount":I
    :goto_1f3
    if-nez v5, :cond_1fb

    .line 993
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 995
    :cond_1fb
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .end local v0    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v8    # "libName":Ljava/lang/String;
    .end local v9    # "libVersion":J
    :goto_1fe
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, v16

    goto/16 :goto_e

    .line 923
    .end local v16    # "libCount":I
    .restart local v4    # "libCount":I
    .restart local v8    # "libName":Ljava/lang/String;
    .restart local v9    # "libVersion":J
    :catchall_20a
    move-exception v0

    move-object/from16 v14, p9

    goto :goto_213

    :catchall_20e
    move-exception v0

    move-object/from16 v14, p9

    move-object/from16 v12, p10

    :goto_213
    move/from16 v16, v4

    .end local v4    # "libCount":I
    .restart local v16    # "libCount":I
    :goto_215
    :try_start_215
    monitor-exit v11
    :try_end_216
    .catchall {:try_start_215 .. :try_end_216} :catchall_217

    throw v0

    :catchall_217
    move-exception v0

    goto :goto_215

    .line 998
    .end local v6    # "i":I
    .end local v8    # "libName":Ljava/lang/String;
    .end local v9    # "libVersion":J
    .end local v16    # "libCount":I
    .restart local v4    # "libCount":I
    :cond_219
    return-object v5
.end method

.method private getLibraryPackage(Lcom/android/server/pm/Computer;Landroid/content/pm/SharedLibraryInfo;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 7
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "libInfo"    # Landroid/content/pm/SharedLibraryInfo;

    .line 300
    invoke-virtual {p2}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    .line 301
    .local v0, "declaringPackage":Landroid/content/pm/VersionedPackage;
    invoke-virtual {p2}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 303
    nop

    .line 304
    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    .line 303
    invoke-interface {p1, v1, v2, v3}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "internalPackageName":Ljava/lang/String;
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    return-object v2

    .line 308
    .end local v1    # "internalPackageName":Ljava/lang/String;
    :cond_1c
    invoke-virtual {p2}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 309
    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    return-object v1

    .line 311
    :cond_2b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static hasString(Ljava/util/List;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 600
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "which":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    if-nez p1, :cond_6

    goto :goto_2d

    .line 603
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_2c

    .line 604
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "j":I
    :goto_13
    if-ltz v3, :cond_29

    .line 605
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 606
    return v2

    .line 604
    :cond_26
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 603
    .end local v3    # "j":I
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 610
    .end local v1    # "i":I
    :cond_2c
    return v0

    .line 601
    :cond_2d
    :goto_2d
    return v0
.end method

.method static synthetic lambda$executeSharedLibrariesUpdateLPw$0(Landroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;)V
    .registers 2
    .param p0, "definingLibrary"    # Landroid/content/pm/SharedLibraryInfo;
    .param p1, "dependency"    # Landroid/content/pm/SharedLibraryInfo;

    .line 557
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->clearDependencies()V

    .line 558
    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/SharedLibrariesImpl;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$2;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private registerObservers()V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 177
    return-void
.end method


# virtual methods
.method addBuiltInSharedLibraryLPw(Lcom/android/server/SystemConfig$SharedLibraryEntry;)V
    .registers 15
    .param p1, "entry"    # Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 697
    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 698
    return-void

    .line 701
    :cond_b
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    iget-object v2, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->filename:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    new-instance v9, Landroid/content/pm/VersionedPackage;

    const-wide/16 v10, 0x0

    const-string v1, "android"

    invoke-direct {v9, v1, v10, v11}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-boolean v12, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->isNative:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 707
    .local v0, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V

    .line 708
    return-void
.end method

.method collectSharedLibraryInfos(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 18
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 858
    .local p2, "availablePackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local p3, "newLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    if-nez p1, :cond_4

    .line 859
    const/4 v0, 0x0

    return-object v0

    .line 861
    :cond_4
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v12

    .line 865
    .local v12, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const/4 v13, 0x0

    .line 866
    .local v13, "usesLibraryInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 867
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 868
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    const/4 v9, 0x0

    .line 867
    const-string/jumbo v6, "shared"

    move-object v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v13

    .line 871
    :cond_32
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 872
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v2

    .line 873
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v4

    .line 874
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    .line 872
    const-string/jumbo v6, "static shared"

    move-object v1, p0

    move-object v9, v13

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v13

    .line 877
    :cond_5e
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_84

    .line 878
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 879
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    .line 878
    const-string/jumbo v6, "shared"

    move-object v1, p0

    move-object v9, v13

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v13

    .line 882
    :cond_84
    const-wide/32 v1, 0x879a9f0

    .line 883
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    .line 882
    invoke-virtual {v12, v1, v2, v3, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 884
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bb

    .line 885
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 886
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 887
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    .line 885
    const-string/jumbo v6, "native shared"

    move-object v1, p0

    move-object v9, v13

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v13

    .line 890
    :cond_bb
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e1

    .line 891
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 892
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 893
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    .line 891
    const-string/jumbo v6, "native shared"

    move-object v1, p0

    move-object v9, v13

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v13

    .line 897
    :cond_e1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10d

    .line 898
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v2

    .line 899
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v4

    .line 900
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    .line 898
    const-string/jumbo v6, "sdk"

    move-object v1, p0

    move-object v9, v13

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v13

    .line 903
    :cond_10d
    return-object v13
.end method

.method commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V
    .registers 7
    .param p1, "libraryInfo"    # Landroid/content/pm/SharedLibraryInfo;

    .line 716
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 718
    .local v1, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v1, :cond_19

    .line 719
    new-instance v2, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>()V

    move-object v1, v2

    .line 720
    iget-object v2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_19
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "declaringPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    .line 724
    iget-object v3, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :cond_2d
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/server/utils/WatchedLongSparseArray;->put(JLjava/lang/Object;)V

    .line 727
    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 3
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 236
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 237
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 1007
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v0

    .line 1008
    .local v0, "checkin":Z
    const/4 v1, 0x0

    .line 1009
    .local v1, "printedHeader":Z
    iget-object v2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    .line 1010
    .local v2, "numSharedLibraries":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_c
    if-ge v3, v2, :cond_b1

    .line 1011
    iget-object v4, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1012
    .local v4, "libName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 1013
    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 1014
    .local v5, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v5, :cond_22

    .line 1015
    goto/16 :goto_ad

    .line 1017
    :cond_22
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v6

    .line 1018
    .local v6, "versionCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_27
    if-ge v7, v6, :cond_ad

    .line 1019
    invoke-virtual {v5, v7}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SharedLibraryInfo;

    .line 1020
    .local v8, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v0, :cond_48

    .line 1021
    if-nez v1, :cond_42

    .line 1022
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 1023
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1025
    :cond_3c
    const-string v9, "Libraries:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    const/4 v1, 0x1

    .line 1028
    :cond_42
    const-string v9, "  "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4d

    .line 1030
    :cond_48
    const-string v9, "lib,"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    :goto_4d
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v9

    if-eqz v9, :cond_74

    .line 1034
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " version="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    :cond_74
    if-nez v0, :cond_7b

    .line 1037
    const-string v9, " -> "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    :cond_7b
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9a

    .line 1040
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 1041
    const-string v9, " (so) "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_92

    .line 1043
    :cond_8d
    const-string v9, " (jar) "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1045
    :goto_92
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a6

    .line 1047
    :cond_9a
    const-string v9, " (apk) "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    :goto_a6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1018
    .end local v8    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_27

    .line 1010
    .end local v4    # "libName":Ljava/lang/String;
    .end local v5    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "versionCount":I
    .end local v7    # "i":I
    :cond_ad
    :goto_ad
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    .line 1053
    .end local v3    # "index":I
    :cond_b1
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 1061
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    .line 1062
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_73

    .line 1063
    iget-object v2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1064
    .local v2, "libName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 1065
    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 1066
    .local v3, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v3, :cond_1c

    .line 1067
    goto :goto_70

    .line 1069
    :cond_1c
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    .line 1070
    .local v4, "versionCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_21
    if-ge v5, v4, :cond_70

    .line 1071
    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    .line 1072
    .local v6, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    const-wide v7, 0x20b00000003L

    .line 1073
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1074
    .local v7, "sharedLibraryToken":J
    const-wide v9, 0x10900000001L

    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1075
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_46

    const/4 v9, 0x1

    goto :goto_47

    :cond_46
    const/4 v9, 0x0

    .line 1076
    .local v9, "isJar":Z
    :goto_47
    const-wide v10, 0x10800000002L

    invoke-virtual {p1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1077
    if-eqz v9, :cond_5e

    .line 1078
    const-wide v10, 0x10900000003L

    .line 1079
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 1078
    invoke-virtual {p1, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_6a

    .line 1081
    :cond_5e
    const-wide v10, 0x10900000004L

    .line 1082
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1081
    invoke-virtual {p1, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1084
    :goto_6a
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1070
    .end local v6    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v7    # "sharedLibraryToken":J
    .end local v9    # "isJar":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 1062
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v4    # "versionCount":I
    .end local v5    # "j":I
    :cond_70
    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1087
    .end local v1    # "i":I
    :cond_73
    return-void
.end method

.method executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V
    .registers 16
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "changingLib"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "changingLibSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "allUsers"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;[I)V"
        }
    .end annotation

    .line 556
    .local p5, "usesLibraryInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V

    .line 559
    if-eqz p5, :cond_99

    .line 560
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 563
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 564
    .local v0, "usesLibraryFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/SharedLibraryInfo;

    .line 565
    .local v8, "libInfo":Landroid/content/pm/SharedLibraryInfo;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v8

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->addSharedLibraryLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;Landroid/content/pm/SharedLibraryInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 567
    .end local v8    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    goto :goto_1b

    .line 568
    :cond_32
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSetting;->setPkgStateLibraryFiles(Ljava/util/Collection;)Lcom/android/server/pm/PackageSetting;

    .line 572
    array-length v1, p6

    new-array v1, v1, [I

    .line 573
    .local v1, "installedUsers":[I
    const/4 v2, 0x0

    .line 574
    .local v2, "installedUserCount":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_3a
    array-length v4, p6

    if-ge v3, v4, :cond_4f

    .line 575
    aget v4, p6, v3

    invoke-virtual {p2, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 576
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "installedUserCount":I
    .local v4, "installedUserCount":I
    aget v5, p6, v3

    aput v5, v1, v2

    move v2, v4

    .line 574
    .end local v4    # "installedUserCount":I
    .restart local v2    # "installedUserCount":I
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 579
    .end local v3    # "u":I
    :cond_4f
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    .line 580
    .local v4, "sharedLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v4}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v5

    if-nez v5, :cond_66

    .line 581
    goto :goto_53

    .line 583
    :cond_66
    iget-object v5, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 584
    invoke-virtual {v4}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 585
    .local v5, "staticLibPkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v5, :cond_8b

    .line 586
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared lib without setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    goto :goto_53

    .line 589
    :cond_8b
    const/4 v6, 0x0

    .local v6, "u":I
    :goto_8c
    if-ge v6, v2, :cond_97

    .line 590
    aget v7, v1, v6

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 589
    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    .line 592
    .end local v4    # "sharedLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v5    # "staticLibPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "u":I
    :cond_97
    goto :goto_53

    .line 593
    .end local v0    # "usesLibraryFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "installedUsers":[I
    .end local v2    # "installedUserCount":I
    :cond_98
    goto :goto_ac

    .line 594
    :cond_99
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 595
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 597
    :goto_ac
    return-void
.end method

.method public getAll()Lcom/android/server/utils/WatchedArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method getAllowedSharedLibInfos(Lcom/android/server/pm/ScanResult;)Ljava/util/List;
    .registers 14
    .param p1, "scanResult"    # Lcom/android/server/pm/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 779
    iget-object v0, p1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 780
    .local v0, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-nez v1, :cond_12

    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    if-nez v1, :cond_12

    .line 782
    return-object v2

    .line 786
    :cond_12
    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v1, :cond_1d

    .line 787
    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 789
    :cond_1d
    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v1, :cond_28

    .line 790
    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 792
    :cond_28
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 794
    .local v1, "hasDynamicLibraries":Z
    :goto_35
    if-nez v1, :cond_38

    .line 795
    return-object v2

    .line 797
    :cond_38
    iget-object v3, p1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    .line 798
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    .line 801
    .local v3, "isUpdatedSystemApp":Z
    if-eqz v3, :cond_54

    .line 802
    iget-object v4, p1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v4, v4, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-nez v4, :cond_4f

    .line 803
    iget-object v4, p1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v4, v4, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    goto :goto_55

    .line 804
    :cond_4f
    iget-object v4, p1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v4, v4, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    goto :goto_55

    .line 805
    :cond_54
    move-object v4, v2

    :goto_55
    nop

    .line 806
    .local v4, "updatedSystemPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_8b

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 807
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_8b

    .line 808
    :cond_68
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " declares libraries that are not declared on the system image; skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return-object v2

    .line 812
    :cond_8b
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    .line 813
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 814
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    iget-object v5, p1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    .line 815
    .local v6, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 816
    .local v7, "name":Ljava/lang/String;
    if-eqz v3, :cond_e9

    .line 827
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e9

    .line 828
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " declares library "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " that is not declared on system image; skipping"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    goto :goto_9c

    .line 834
    :cond_e9
    iget-object v8, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v8

    .line 835
    const-wide/16 v9, -0x1

    :try_start_f0
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v9

    if-eqz v9, :cond_125

    .line 836
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " declares library "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " that already exists; skipping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    monitor-exit v8

    goto/16 :goto_9c

    .line 840
    :cond_125
    monitor-exit v8
    :try_end_126
    .catchall {:try_start_f0 .. :try_end_126} :catchall_12b

    .line 841
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    .end local v6    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v7    # "name":Ljava/lang/String;
    goto/16 :goto_9c

    .line 840
    .restart local v6    # "info":Landroid/content/pm/SharedLibraryInfo;
    .restart local v7    # "name":Ljava/lang/String;
    :catchall_12b
    move-exception v5

    :try_start_12c
    monitor-exit v8
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12b

    throw v5

    .line 843
    .end local v6    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v7    # "name":Ljava/lang/String;
    :cond_12e
    return-object v2
.end method

.method getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 393
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 394
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 395
    .local v0, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 396
    return-object v1

    .line 398
    :cond_10
    const-wide/16 v2, -0x1

    .line 399
    .local v2, "previousLibVersion":J
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    .line 400
    .local v4, "versionCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v4, :cond_2c

    .line 401
    invoke-virtual {v0, v5}, Lcom/android/server/utils/WatchedLongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 402
    .local v6, "libVersion":J
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_29

    .line 403
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 400
    .end local v6    # "libVersion":J
    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 406
    .end local v5    # "i":I
    :cond_2c
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_39

    .line 407
    invoke-virtual {v0, v2, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    return-object v1

    .line 409
    :cond_39
    return-object v1
.end method

.method public getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method public getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .registers 6
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "version"    # J

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 280
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 281
    .local v0, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v0, :cond_c

    .line 282
    const/4 v1, 0x0

    return-object v1

    .line 284
    :cond_c
    invoke-virtual {v0, p2, p3}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    return-object v1
.end method

.method public getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;
    .registers 3
    .param p1, "libName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedLongSparseArray;

    return-object v0
.end method

.method public getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;
    .registers 3
    .param p1, "declaringPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedLongSparseArray;

    return-object v0
.end method

.method getStaticSharedLibLatestVersionSetting(Lcom/android/server/pm/ScanResult;)Lcom/android/server/pm/PackageSetting;
    .registers 7
    .param p1, "scanResult"    # Lcom/android/server/pm/ScanResult;

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "sharedLibPackage":Lcom/android/server/pm/PackageSetting;
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 423
    :try_start_6
    iget-object v2, p1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 424
    invoke-virtual {p0, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    .line 425
    .local v2, "latestSharedLibraVersionLPr":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v2, :cond_1d

    .line 426
    iget-object v3, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 427
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    move-object v0, v3

    .line 429
    .end local v2    # "latestSharedLibraVersionLPr":Landroid/content/pm/SharedLibraryInfo;
    :cond_1d
    monitor-exit v1

    .line 430
    return-object v0

    .line 429
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 224
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    .registers 33
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "neededSpace"    # J
    .param p4, "maxCachePeriod"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 328
    .local v1, "storage":Landroid/os/storage/StorageManager;
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 330
    .local v2, "volume":Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v3, "packagesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/VersionedPackage;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 337
    .local v4, "now":J
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v6

    .line 338
    .local v6, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    .line 339
    .local v7, "libCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_24
    if-ge v8, v7, :cond_9e

    .line 340
    nop

    .line 341
    invoke-virtual {v6, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 342
    .local v9, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v9, :cond_36

    .line 343
    move-object/from16 v13, p1

    move-object/from16 v17, v1

    move-wide/from16 v18, v4

    goto :goto_97

    .line 345
    :cond_36
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v10

    .line 346
    .local v10, "versionCount":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3b
    if-ge v11, v10, :cond_91

    .line 347
    invoke-virtual {v9, v11}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/SharedLibraryInfo;

    .line 348
    .local v12, "libInfo":Landroid/content/pm/SharedLibraryInfo;
    move-object/from16 v13, p1

    invoke-direct {v0, v13, v12}, Lcom/android/server/pm/SharedLibrariesImpl;->getLibraryPackage(Lcom/android/server/pm/Computer;Landroid/content/pm/SharedLibraryInfo;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 349
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v14, :cond_50

    .line 350
    move-object/from16 v17, v1

    move-wide/from16 v18, v4

    goto :goto_8a

    .line 354
    :cond_50
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastUpdateTime()J

    move-result-wide v15

    sub-long v15, v4, v15

    cmp-long v15, v15, p4

    if-gez v15, :cond_5f

    .line 355
    move-object/from16 v17, v1

    move-wide/from16 v18, v4

    goto :goto_8a

    .line 358
    :cond_5f
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v15

    if-eqz v15, :cond_6e

    .line 359
    move-object/from16 v17, v1

    move-wide/from16 v18, v4

    goto :goto_8a

    .line 362
    :cond_6e
    new-instance v15, Landroid/content/pm/VersionedPackage;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v16

    move-object/from16 v17, v1

    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    .local v17, "storage":Landroid/os/storage/StorageManager;
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {v12}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v16

    move-wide/from16 v18, v4

    .end local v4    # "now":J
    .local v18, "now":J
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-direct {v15, v1, v4, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 362
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v12    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_8a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v17

    move-wide/from16 v4, v18

    goto :goto_3b

    .end local v17    # "storage":Landroid/os/storage/StorageManager;
    .end local v18    # "now":J
    .restart local v1    # "storage":Landroid/os/storage/StorageManager;
    .restart local v4    # "now":J
    :cond_91
    move-object/from16 v13, p1

    move-object/from16 v17, v1

    move-wide/from16 v18, v4

    .line 339
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    .end local v4    # "now":J
    .end local v9    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v10    # "versionCount":I
    .end local v11    # "j":I
    .restart local v17    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "now":J
    :goto_97
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v17

    move-wide/from16 v4, v18

    goto :goto_24

    .end local v17    # "storage":Landroid/os/storage/StorageManager;
    .end local v18    # "now":J
    .restart local v1    # "storage":Landroid/os/storage/StorageManager;
    .restart local v4    # "now":J
    :cond_9e
    move-object/from16 v13, p1

    move-object/from16 v17, v1

    move-wide/from16 v18, v4

    .line 367
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    .end local v4    # "now":J
    .end local v8    # "i":I
    .restart local v17    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "now":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 368
    .local v1, "packageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a9
    if-ge v4, v1, :cond_d6

    .line 369
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/VersionedPackage;

    .line 371
    .local v5, "pkgToDelete":Landroid/content/pm/VersionedPackage;
    iget-object v8, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 372
    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x2

    const/16 v26, 0x1

    .line 371
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v26}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d3

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    cmp-long v8, v10, p2

    if-ltz v8, :cond_d3

    .line 376
    return v9

    .line 368
    .end local v5    # "pkgToDelete":Landroid/content/pm/VersionedPackage;
    :cond_d3
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 381
    .end local v4    # "i":I
    :cond_d6
    const/4 v4, 0x0

    return v4
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 204
    return-void
.end method

.method removeSharedLibraryLPw(Ljava/lang/String;J)Z
    .registers 23
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "version"    # J

    .line 734
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 735
    .local v4, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    const/4 v5, 0x0

    if-nez v4, :cond_12

    .line 736
    return v5

    .line 738
    :cond_12
    invoke-virtual {v4, v2, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->indexOfKey(J)I

    move-result v6

    .line 739
    .local v6, "libIdx":I
    if-gez v6, :cond_19

    .line 740
    return v5

    .line 742
    :cond_19
    invoke-virtual {v4, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 744
    .local v7, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    iget-object v8, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    .line 747
    .local v14, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v8, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v15

    array-length v13, v15

    :goto_2e
    if-ge v5, v13, :cond_88

    aget v12, v15, v5

    .line 748
    .local v12, "currentUserId":I
    const-wide/16 v10, 0x0

    const/16 v16, 0x3e8

    move-object v8, v14

    move-object v9, v7

    move/from16 v17, v12

    .end local v12    # "currentUserId":I
    .local v17, "currentUserId":I
    move/from16 v12, v16

    move/from16 v16, v13

    move/from16 v13, v17

    invoke-interface/range {v8 .. v13}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v8

    .line 750
    .local v8, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    if-nez v8, :cond_49

    .line 751
    move/from16 v18, v6

    goto :goto_81

    .line 753
    :cond_49
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/VersionedPackage;

    .line 754
    .local v10, "dependentPackage":Landroid/content/pm/VersionedPackage;
    iget-object v11, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 755
    invoke-virtual {v10}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 754
    invoke-virtual {v11, v12}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    .line 756
    .local v11, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v11, :cond_74

    .line 757
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v18, v6

    move/from16 v6, v17

    .end local v17    # "currentUserId":I
    .local v6, "currentUserId":I
    .local v18, "libIdx":I
    invoke-virtual {v11, v12, v13, v6}, Lcom/android/server/pm/PackageSetting;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z

    goto :goto_78

    .line 756
    .end local v18    # "libIdx":I
    .local v6, "libIdx":I
    .restart local v17    # "currentUserId":I
    :cond_74
    move/from16 v18, v6

    move/from16 v6, v17

    .line 759
    .end local v10    # "dependentPackage":Landroid/content/pm/VersionedPackage;
    .end local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "currentUserId":I
    .local v6, "currentUserId":I
    .restart local v18    # "libIdx":I
    :goto_78
    move/from16 v17, v6

    move/from16 v6, v18

    goto :goto_4d

    .line 753
    .end local v18    # "libIdx":I
    .local v6, "libIdx":I
    .restart local v17    # "currentUserId":I
    :cond_7d
    move/from16 v18, v6

    move/from16 v6, v17

    .line 747
    .end local v6    # "libIdx":I
    .end local v8    # "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local v17    # "currentUserId":I
    .restart local v18    # "libIdx":I
    :goto_81
    add-int/lit8 v5, v5, 0x1

    move/from16 v13, v16

    move/from16 v6, v18

    goto :goto_2e

    .line 762
    .end local v18    # "libIdx":I
    .restart local v6    # "libIdx":I
    :cond_88
    move/from16 v18, v6

    .end local v6    # "libIdx":I
    .restart local v18    # "libIdx":I
    invoke-virtual {v4, v2, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->remove(J)V

    .line 763
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_ac

    .line 764
    iget-object v5, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_ac

    .line 766
    iget-object v5, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v6

    .line 767
    invoke-virtual {v6}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 766
    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_ac
    const/4 v5, 0x1

    return v5
.end method

.method setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V
    .registers 2
    .param p1, "deletePackageHelper"    # Lcom/android/server/pm/DeletePackageHelper;

    .line 171
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 172
    return-void
.end method

.method public snapshot()Lcom/android/server/pm/SharedLibrariesRead;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedLibrariesRead;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 79
    invoke-virtual {p0}, Lcom/android/server/pm/SharedLibrariesImpl;->snapshot()Lcom/android/server/pm/SharedLibrariesRead;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 214
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 215
    return-void
.end method

.method updateAllSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 30
    .param p1, "updatedPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "updatedPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 626
    .local p3, "availablePackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 628
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v1, 0x0

    .line 630
    .local v1, "descendants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 631
    .local v2, "needsUpdating":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;>;>;"
    const/4 v8, 0x1

    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    .line 632
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 633
    invoke-static/range {p1 .. p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v2

    goto :goto_1a

    .line 637
    :cond_19
    move-object v9, v2

    .end local v2    # "needsUpdating":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;>;>;"
    .local v9, "needsUpdating":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;>;>;"
    :cond_1a
    :goto_1a
    const/4 v10, 0x0

    const/4 v2, 0x0

    if-nez v9, :cond_20

    move-object v3, v2

    goto :goto_26

    :cond_20
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    :goto_26
    move-object v11, v3

    .line 638
    .local v11, "changingPkgPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;>;"
    if-eqz v11, :cond_2e

    .line 639
    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    goto :goto_2f

    :cond_2e
    move-object v3, v2

    :goto_2f
    move-object v12, v3

    .line 640
    .local v12, "changingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v11, :cond_37

    .line 641
    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    goto :goto_38

    :cond_37
    nop

    :goto_38
    move-object v5, v2

    .line 642
    .local v5, "changingPkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v8

    move v13, v2

    .local v13, "i":I
    :goto_43
    if-ltz v13, :cond_13c

    .line 643
    iget-object v2, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v13}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 644
    .local v14, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v2, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15

    .line 645
    .local v15, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v12, :cond_98

    .line 646
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->hasString(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 647
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->hasString(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 648
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v2

    .line 649
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 650
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v2

    .line 651
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 652
    goto/16 :goto_138

    .line 654
    :cond_98
    if-nez v0, :cond_a2

    .line 655
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    move-object v6, v0

    goto :goto_a3

    .line 654
    :cond_a2
    move-object v6, v0

    .line 657
    .end local v0    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v6, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_a3
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    if-eqz v12, :cond_cb

    .line 660
    if-nez v1, :cond_b0

    .line 661
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v0

    .line 663
    :cond_b0
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 664
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_c8
    move-object/from16 v16, v1

    goto :goto_cd

    .line 659
    :cond_cb
    move-object/from16 v16, v1

    .line 669
    .end local v1    # "descendants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v16, "descendants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_cd
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v12

    move-object/from16 v17, v6

    .end local v6    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v17, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    move-object/from16 v6, p3

    :try_start_d6
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_d9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d6 .. :try_end_d9} :catch_da

    .line 685
    goto :goto_134

    .line 671
    :catch_da
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 677
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_ed

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 678
    :cond_ed
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 679
    move/from16 v23, v8

    goto :goto_fc

    :cond_fa
    move/from16 v23, v10

    .line 680
    .local v23, "flags":I
    :goto_fc
    iget-object v1, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    iget-object v2, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 681
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x1

    .line 680
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    .line 684
    .end local v23    # "flags":I
    :cond_117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAllSharedLibrariesLPw failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v14    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :goto_134
    move-object/from16 v1, v16

    move-object/from16 v0, v17

    .end local v16    # "descendants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v1    # "descendants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_138
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_43

    .line 687
    .end local v5    # "changingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "changingPkgPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;>;"
    .end local v12    # "changingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "i":I
    :cond_13c
    if-eqz v9, :cond_144

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1a

    .line 688
    :cond_144
    return-object v0
.end method

.method updateSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "changingLib"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "changingLibSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 532
    .local p5, "availablePackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p5, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    .line 534
    .local v0, "sharedLibraryInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 535
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    .line 534
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 536
    return-void
.end method
