.class Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.super Lcom/android/server/pm/PackageManagerInternalBase;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 6362
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6363
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 6364
    return-void
.end method

.method static synthetic lambda$getPackageList$0(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6486
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 6487
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_d

    .line 6488
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6490
    :cond_d
    return-void
.end method

.method static synthetic lambda$getTargetPackageNames$2(Ljava/util/List;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4
    .param p0, "targetPackages"    # Ljava/util/List;
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6622
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 6623
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOverlay()Z

    move-result v1

    if-nez v1, :cond_13

    .line 6624
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6626
    :cond_13
    return-void
.end method

.method static synthetic lambda$removeAllNonSystemPackageSuspensions$1(Ljava/lang/String;)Z
    .registers 2
    .param p0, "suspendingPackage"    # Ljava/lang/String;

    .line 6530
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .registers 5
    .param p1, "isolatedUid"    # I
    .param p2, "ownerUid"    # I

    .line 6640
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6641
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/utils/WatchedSparseIntArray;->put(II)V

    .line 6642
    monitor-exit v0

    .line 6643
    return-void

    .line 6642
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public clearBlockUninstallForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 6783
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6784
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->clearBlockUninstallLPw(I)V

    .line 6785
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 6786
    monitor-exit v0

    .line 6787
    return-void

    .line 6786
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public compileLayouts(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6665
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6666
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 6667
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_14

    .line 6668
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 6670
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1e

    .line 6671
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/dex/ArtManagerService;->compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    return v0

    .line 6670
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public flushPackageRestrictions(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 6536
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6537
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V

    .line 6538
    monitor-exit v0

    .line 6539
    return-void

    .line 6538
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method protected getApexManager()Lcom/android/server/pm/ApexManager;
    .registers 2

    .line 6429
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-object v0
.end method

.method protected getAppDataHelper()Lcom/android/server/pm/AppDataHelper;
    .registers 2

    .line 6381
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object v0

    return-object v0
.end method

.method public getCeDataInode(Ljava/lang/String;I)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 6516
    nop

    .line 6517
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 6518
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_e

    .line 6519
    const-wide/16 v1, 0x0

    return-wide v1

    .line 6521
    :cond_e
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getCeDataInode()J

    move-result-wide v1

    return-wide v1
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 6369
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDexManager()Lcom/android/server/pm/dex/DexManager;
    .registers 2

    .line 6435
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6501
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 6503
    .local v0, "disabledPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 6504
    move-object v2, v1

    goto :goto_11

    :cond_d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 6505
    .local v2, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_11
    if-nez v2, :cond_14

    goto :goto_18

    :cond_14
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_18
    return-object v1
.end method

.method protected getDistractingPackageHelper()Lcom/android/server/pm/DistractingPackageHelper;
    .registers 2

    .line 6405
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object v0

    return-object v0
.end method

.method public getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterCallingUid"    # I
    .param p3, "userId"    # I

    .line 6815
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6816
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 6818
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_10

    .line 6819
    const/4 v2, 0x0

    return-object v2

    .line 6821
    :cond_10
    new-instance v2, Landroid/content/pm/IncrementalStatesInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isLoading()Z

    move-result v3

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLoadingProgress()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/content/pm/IncrementalStatesInfo;-><init>(ZF)V

    return-object v2
.end method

.method protected getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;
    .registers 2

    .line 6423
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    return-object v0
.end method

.method public getOverlayPackages(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 6600
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6601
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6602
    .local v1, "overlayPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 6603
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6604
    .local v2, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_11
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 6605
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6606
    .local v4, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 6607
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v5, :cond_34

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_34

    .line 6608
    const-wide/16 v6, 0x0

    invoke-interface {v0, v4, v6, v7, p1}, Lcom/android/server/pm/Computer;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 6609
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_34

    .line 6610
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6604
    .end local v4    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 6615
    .end local v3    # "index":I
    :cond_37
    return-object v1
.end method

.method public getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;
    .registers 6
    .param p1, "observer"    # Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 6484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6485
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 6491
    new-instance v1, Lcom/android/server/pm/PackageList;

    invoke-direct {v1, v0, p1}, Lcom/android/server/pm/PackageList;-><init>(Ljava/util/List;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    .line 6492
    .local v1, "packageList":Lcom/android/server/pm/PackageList;
    if-eqz p1, :cond_23

    .line 6493
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageObserverHelper;->addObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    .line 6495
    :cond_23
    return-object v1
.end method

.method protected getPackageObserverHelper()Lcom/android/server/pm/PackageObserverHelper;
    .registers 2

    .line 6387
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 2

    .line 6375
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v0
.end method

.method protected getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;
    .registers 2

    .line 6411
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    return-object v0
.end method

.method protected getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;
    .registers 2

    .line 6393
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;
    .registers 2

    .line 6399
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPackageNames(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6621
    .local v0, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 6627
    return-object v0
.end method

.method protected getUserNeedsBadging()Lcom/android/server/pm/UserNeedsBadgingCache;
    .registers 2

    .line 6417
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    return-object v0
.end method

.method public hasSignatureCapability(III)Z
    .registers 8
    .param p1, "serverUid"    # I
    .param p2, "clientUid"    # I
    .param p3, "capability"    # I

    .line 6475
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6476
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getSigningDetails(I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 6477
    .local v1, "serverSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(I)Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 6478
    .local v2, "clientSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-virtual {v1, v2, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 6479
    invoke-virtual {v2, v1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v3, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v3, 0x1

    .line 6478
    :goto_1c
    return v3
.end method

.method public isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 6
    .param p1, "restoringFromSig"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 6463
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6464
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 6465
    .local v1, "sd":Landroid/content/pm/SigningDetails;
    if-nez v1, :cond_c

    .line 6466
    const/4 v2, 0x0

    return v2

    .line 6468
    :cond_c
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result v2

    return v2
.end method

.method public isDataRestoreSafe([BLjava/lang/String;)Z
    .registers 6
    .param p1, "restoringFromSigHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .line 6452
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6453
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 6454
    .local v1, "sd":Landroid/content/pm/SigningDetails;
    if-nez v1, :cond_c

    .line 6455
    const/4 v2, 0x0

    return v2

    .line 6457
    :cond_c
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([BI)Z

    move-result v2

    return v2
.end method

.method public isPackagePersistent(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6588
    nop

    .line 6589
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 6590
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 6591
    return v1

    .line 6594
    :cond_d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 6595
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_20

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 6760
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->isPermissionUpgradeNeeded(I)Z

    move-result v0

    return v0
.end method

.method public isPlatformSigned(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6440
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 6441
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 6442
    return v1

    .line 6444
    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 6445
    .local v2, "signingDetails":Landroid/content/pm/SigningDetails;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 6446
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_31
    const/4 v1, 0x1

    .line 6445
    :cond_32
    return v1
.end method

.method public isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/pm/ComponentInfo;

    .line 6510
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 6511
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 6510
    :goto_23
    return v0
.end method

.method public isSameApp(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 6826
    if-nez p1, :cond_4

    .line 6827
    const/4 v0, 0x0

    return v0

    .line 6830
    :cond_4
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6831
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmRequiredSdkSandboxPackage(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 6833
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6834
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2, p3}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 6835
    .local v1, "uid":I
    invoke-static {v1, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    return v2
.end method

.method synthetic lambda$onPackageProcessKilledForUninstall$3$com-android-server-pm-PackageManagerService$PackageManagerInternalImpl(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6840
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    return-void
.end method

.method public migrateLegacyObbData()V
    .registers 3

    .line 6731
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->migrateLegacyObbData()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 6734
    goto :goto_e

    .line 6732
    :catch_8
    move-exception v0

    .line 6733
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6735
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public notifyPackageUse(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 6654
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6655
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 6656
    monitor-exit v0

    .line 6657
    return-void

    .line 6656
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onPackageProcessKilledForUninstall(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6840
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6842
    return-void
.end method

.method public pruneCachedApksInApex(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 6561
    .local p1, "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmCacheDir(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    .line 6562
    return-void

    .line 6565
    :cond_9
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmCacheDir(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    .line 6566
    .local v0, "cacher":Lcom/android/server/pm/parsing/PackageCacher;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 6567
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 6568
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_22
    if-ge v3, v4, :cond_57

    .line 6569
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 6570
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 6571
    .local v5, "apkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "apksInApex":I
    :goto_39
    if-ge v6, v7, :cond_54

    .line 6572
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v8}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    .line 6573
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    new-instance v9, Ljava/io/File;

    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    .line 6571
    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 6568
    .end local v5    # "apkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "j":I
    .end local v7    # "apksInApex":I
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 6576
    .end local v2    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_57
    monitor-exit v1

    .line 6577
    return-void

    .line 6576
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_19 .. :try_end_5b} :catchall_59

    throw v2
.end method

.method public registerInstalledLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;
    .param p3, "userId"    # I

    .line 6792
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6793
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6794
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6793
    invoke-static {v1, v0, p1, v2, p3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 6795
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 6796
    return v2

    .line 6798
    :cond_14
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isLoading()Z

    move-result v3

    const-string v4, "PackageManager"

    if-nez v3, :cond_22

    .line 6799
    const-string v3, "Failed registering loading progress callback. Package is fully loaded."

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6801
    return v2

    .line 6803
    :cond_22
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-nez v3, :cond_2e

    .line 6804
    const-string v3, "Failed registering loading progress callback. Incremental is not enabled"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6806
    return v2

    .line 6808
    :cond_2e
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPathString()Ljava/lang/String;

    move-result-object v3

    .line 6809
    invoke-virtual {p2}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IPackageLoadingProgressCallback;

    .line 6808
    invoke-virtual {v2, v3, v4}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    move-result v2

    return v2
.end method

.method public removeAllNonSystemPackageSuspensions(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 6527
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6528
    .local v0, "computer":Lcom/android/server/pm/Computer;
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v1

    .line 6529
    .local v1, "allPackages":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v0, v1, v3, p1}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 6532
    return-void
.end method

.method public removeIsolatedUid(I)V
    .registers 4
    .param p1, "isolatedUid"    # I

    .line 6647
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6648
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseIntArray;->delete(I)V

    .line 6649
    monitor-exit v0

    .line 6650
    return-void

    .line 6649
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 6677
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6678
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 6679
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 8
    .param p1, "deviceOwnerUserId"    # I
    .param p2, "deviceOwnerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6545
    .local p3, "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ProtectedPackages;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 6547
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6548
    .local v0, "usersWithPoOrDo":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_15

    .line 6549
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6551
    :cond_15
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 6552
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_2c

    .line 6553
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 6554
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->removeAllNonSystemPackageSuspensions(I)V

    .line 6552
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 6557
    .end local v2    # "i":I
    :cond_2c
    return-void
.end method

.method public setEnabledOverlayPackages(ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "overlayPaths"    # Landroid/content/pm/overlay/OverlayPaths;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 6634
    .local p4, "outUpdatedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledOverlayPackages(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
    .registers 3
    .param p1, "policy"    # Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 6581
    if-eqz p1, :cond_6

    .line 6582
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, v0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 6584
    :cond_6
    return-void
.end method

.method public setIntegrityVerificationResult(II)V
    .registers 5
    .param p1, "verificationId"    # I
    .param p2, "verificationResult"    # I

    .line 6765
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6766
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 6767
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6768
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6769
    return-void
.end method

.method public setVisibilityLogging(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 6773
    nop

    .line 6774
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 6775
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_1b

    .line 6778
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v1}, Lcom/android/server/pm/AppsFilterImpl;->getFeatureConfig()Lcom/android/server/pm/FeatureConfig;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/android/server/pm/FeatureConfig;->enableLogging(IZ)V

    .line 6779
    return-void

    .line 6776
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I
    .param p5, "intentSender"    # Landroid/content/IntentSender;
    .param p6, "flags"    # I

    .line 6685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6686
    .local v0, "callerUid":I
    if-eqz v0, :cond_13

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 6687
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Not allowed to uninstall apexes"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6689
    :cond_13
    :goto_13
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v5, p5

    move-object v6, p1

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 6693
    .local v1, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    and-int/lit8 v2, p6, 0x2

    const/4 v3, -0x5

    if-nez v2, :cond_2c

    .line 6694
    const-string v2, "Can\'t uninstall an apex for a single user"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 6696
    return-void

    .line 6698
    :cond_2c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 6699
    .local v2, "am":Lcom/android/server/pm/ApexManager;
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 6701
    .local v5, "activePackage":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_4e

    .line 6702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is not an apex package"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 6704
    return-void

    .line 6706
    :cond_4e
    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_87

    .line 6707
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    cmp-long v6, v6, p2

    if-eqz v6, :cond_87

    .line 6708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6709
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is not equal to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6708
    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 6711
    return-void

    .line 6713
    :cond_87
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/server/pm/ApexManager;->uninstallApex(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a8

    .line 6714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to uninstall apex "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_ac

    .line 6717
    :cond_a8
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v4, v3}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 6720
    :goto_ac
    return-void
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 6725
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->updateRuntimePermissionsFingerprint(I)V

    .line 6726
    return-void
.end method

.method public writePermissionSettings([IZ)V
    .registers 10
    .param p1, "userIds"    # [I
    .param p2, "async"    # Z

    .line 6750
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6751
    :try_start_5
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_1b

    aget v4, p1, v3

    .line 6752
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-nez p2, :cond_14

    const/4 v6, 0x1

    goto :goto_15

    :cond_14
    move v6, v2

    :goto_15
    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/Settings;->writePermissionStateForUserLPr(IZ)V

    .line 6751
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6754
    :cond_1b
    monitor-exit v0

    .line 6755
    return-void

    .line 6754
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public writeSettings(Z)V
    .registers 4
    .param p1, "async"    # Z

    .line 6739
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 6740
    if-eqz p1, :cond_d

    .line 6741
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    goto :goto_12

    .line 6743
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 6745
    :goto_12
    monitor-exit v0

    .line 6746
    return-void

    .line 6745
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method
