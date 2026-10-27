.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.source "ComputerEngine.java"

# interfaces
.implements Lcom/android/server/pm/Computer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ComputerEngine$Settings;
    }
.end annotation


# static fields
.field private static final sProviderInitOrderSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mAppPredictionServicePackage:Ljava/lang/String;

.field private final mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

.field private final mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

.field private final mCompilerStats:Lcom/android/server/pm/CompilerStats;

.field private final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field private final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

.field private final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field private final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field private final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field private final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field private final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field private final mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field private final mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field private final mLocalResolveComponentName:Landroid/content/ComponentName;

.field private final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field protected final mService:Lcom/android/server/pm/PackageManagerService;

.field protected final mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

.field private final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

.field private mUsed:I

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;

.field private final mVersion:I

.field private final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 367
    new-instance v0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V
    .registers 5
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$Snapshot;
    .param p2, "version"    # I

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 433
    iput p2, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    .line 434
    new-instance v0, Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;-><init>(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 435
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 436
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 437
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 438
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 439
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 440
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    .line 441
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 442
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 443
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 444
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 445
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 446
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 447
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 448
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 450
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 454
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 455
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 456
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 457
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 458
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 459
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 460
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 461
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 462
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 463
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 464
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 465
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    .line 466
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 470
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 471
    return-void
.end method

.method private addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V
    .registers 14
    .param p2, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "tmp"    # [Z
    .param p5, "flags"    # J
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[",
            "Ljava/lang/String;",
            "[ZJI)V"
        }
    .end annotation

    .line 4708
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 4709
    .local v0, "numMatch":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_1f

    .line 4710
    aget-object v2, p3, v1

    .line 4711
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, p7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_19

    .line 4713
    const/4 v3, 0x1

    aput-boolean v3, p4, v1

    .line 4714
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 4716
    :cond_19
    const/4 v3, 0x0

    aput-boolean v3, p4, v1

    .line 4709
    .end local v2    # "permission":Ljava/lang/String;
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4719
    .end local v1    # "i":I
    :cond_1f
    if-nez v0, :cond_22

    .line 4720
    return-void

    .line 4722
    :cond_22
    invoke-virtual {p0, p2, p5, p6, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4726
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_52

    .line 4727
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p5

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4f

    .line 4728
    array-length v2, p3

    if-ne v0, v2, :cond_37

    .line 4729
    iput-object p3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_4f

    .line 4731
    :cond_37
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 4732
    const/4 v0, 0x0

    .line 4733
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    array-length v3, p3

    if-ge v2, v3, :cond_4f

    .line 4734
    aget-boolean v3, p4, v2

    if-eqz v3, :cond_4c

    .line 4735
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, p3, v2

    aput-object v4, v3, v0

    .line 4736
    add-int/lit8 v0, v0, 0x1

    .line 4733
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 4741
    .end local v2    # "i":I
    :cond_4f
    :goto_4f
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4743
    :cond_52
    return-void
.end method

.method private applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .registers 16
    .param p2, "instantAppPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "filterCallingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1410
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_be

    .line 1411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1412
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez p2, :cond_32

    .line 1413
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1414
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 1415
    .local v2, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 1416
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1417
    .local v3, "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object v5, p0

    move v6, p4

    move-object v7, v2

    move-object v8, v3

    move v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1419
    goto/16 :goto_ba

    .line 1422
    .end local v2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v3    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_32
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    .line 1424
    .local v2, "isEphemeralApp":Z
    if-eqz v2, :cond_ab

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1425
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_ba

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 1426
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    .line 1428
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    const-string v4, "PackageManager"

    if-nez v3, :cond_71

    .line 1429
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_6d

    .line 1430
    const-string v3, "No installer - not adding it to the ResolveInfolist"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_6d
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1434
    goto :goto_ba

    .line 1438
    :cond_71
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_7a

    .line 1439
    const-string v3, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_7a
    new-instance v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1443
    .local v3, "installerInfo":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v5, 0x0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v10, v3, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1449
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1451
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1452
    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1453
    .end local v3    # "installerInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_ba

    .line 1457
    :cond_ab
    if-nez v2, :cond_b7

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v3, v3, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_b7

    .line 1460
    goto :goto_ba

    .line 1462
    :cond_b7
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1410
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "isEphemeralApp":Z
    :cond_ba
    :goto_ba
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    .line 1464
    .end local v0    # "i":I
    :cond_be
    return-object p1
.end method

.method private areWebInstantAppsDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2284
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private bestDomainVerificationStatus(II)I
    .registers 4
    .param p1, "status1"    # I
    .param p2, "status2"    # I

    .line 2811
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 2812
    return p2

    .line 2814
    :cond_4
    if-ne p2, v0, :cond_7

    .line 2815
    return p1

    .line 2817
    :cond_7
    invoke-static {p1, p2}, Landroid/util/MathUtils;->max(II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;
    .registers 8
    .param p0, "callingUid"    # I
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "requireFullPermission"    # Z
    .param p4, "isSameProfileGroup"    # Z

    .line 3010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3011
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_f

    .line 3012
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    :cond_f
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3017
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    if-nez p3, :cond_37

    .line 3020
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    if-eqz p4, :cond_37

    .line 3023
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    const-string v1, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    :cond_37
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3028
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3029
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "callingUid"    # I
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "requireFullPermission"    # Z

    .line 3082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3083
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_f

    .line 3084
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3087
    :cond_f
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3089
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3090
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3091
    if-nez p3, :cond_2d

    .line 3092
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3093
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3095
    :cond_2d
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3097
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .registers 8
    .param p1, "p1SigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "p2SigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 4355
    const/4 v0, 0x1

    if-nez p1, :cond_8

    .line 4356
    if-nez p2, :cond_6

    .line 4357
    goto :goto_7

    .line 4358
    :cond_6
    const/4 v0, -0x1

    .line 4356
    :goto_7
    return v0

    .line 4360
    :cond_8
    if-nez p2, :cond_c

    .line 4361
    const/4 v0, -0x2

    return v0

    .line 4363
    :cond_c
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 4364
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 4363
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    .line 4365
    .local v1, "result":I
    if-nez v1, :cond_1b

    .line 4366
    return v1

    .line 4371
    :cond_1b
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-nez v2, :cond_27

    .line 4372
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 4373
    :cond_27
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    .line 4374
    new-array v2, v0, [Landroid/content/pm/Signature;

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v4

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    goto :goto_3d

    .line 4375
    :cond_39
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    :goto_3d
    nop

    .line 4376
    .local v2, "p1Signatures":[Landroid/content/pm/Signature;
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 4377
    new-array v0, v0, [Landroid/content/pm/Signature;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v4

    aget-object v4, v4, v3

    aput-object v4, v0, v3

    goto :goto_53

    .line 4378
    :cond_4f
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    :goto_53
    nop

    .line 4379
    .local v0, "p2Signatures":[Landroid/content/pm/Signature;
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    .line 4381
    .end local v0    # "p2Signatures":[Landroid/content/pm/Signature;
    .end local v2    # "p1Signatures":[Landroid/content/pm/Signature;
    :cond_58
    return v1
.end method

.method private createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JI)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 25
    .param p1, "filter"    # Lcom/android/server/pm/CrossProfileIntentFilter;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "sourceUserId"    # I

    .line 1897
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v8

    .line 1898
    .local v8, "targetUserId":I
    invoke-direct {v7, v8}, Lcom/android/server/pm/ComputerEngine;->isUserEnabled(I)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_e

    .line 1899
    return-object v9

    .line 1902
    :cond_e
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move v6, v8

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v6

    .line 1904
    .local v6, "resultTargetUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1905
    return-object v9

    .line 1908
    :cond_24
    const/4 v0, 0x0

    .line 1909
    .local v0, "forwardingInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2b
    if-ltz v1, :cond_4f

    .line 1910
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1911
    .local v2, "targetUserResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-nez v3, :cond_48

    .line 1913
    move-object/from16 v10, p1

    move/from16 v11, p6

    invoke-virtual {v7, v10, v11, v8}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1915
    move-object v12, v0

    goto :goto_54

    .line 1911
    :cond_48
    move-object/from16 v10, p1

    move/from16 v11, p6

    .line 1909
    .end local v2    # "targetUserResolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    :cond_4f
    move-object/from16 v10, p1

    move/from16 v11, p6

    move-object v12, v0

    .line 1919
    .end local v0    # "forwardingInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "i":I
    .local v12, "forwardingInfo":Landroid/content/pm/ResolveInfo;
    :goto_54
    if-nez v12, :cond_57

    .line 1921
    return-object v9

    .line 1924
    :cond_57
    const/4 v0, 0x0

    .line 1926
    .local v0, "highestApprovalLevel":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 1927
    .local v9, "size":I
    const/4 v1, 0x0

    move v13, v0

    move v14, v1

    .end local v0    # "highestApprovalLevel":I
    .local v13, "highestApprovalLevel":I
    .local v14, "i":I
    :goto_5f
    if-ge v14, v9, :cond_91

    .line 1928
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 1929
    .local v15, "riTargetUser":Landroid/content/pm/ResolveInfo;
    iget-boolean v0, v15, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v0, :cond_6d

    .line 1930
    goto :goto_8e

    .line 1932
    :cond_6d
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1933
    .local v5, "packageName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 1934
    .local v16, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v16, :cond_7a

    .line 1935
    goto :goto_8e

    .line 1937
    :cond_7a
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1938
    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move-object/from16 v17, v5

    .end local v5    # "packageName":Ljava/lang/String;
    .local v17, "packageName":Ljava/lang/String;
    move v5, v8

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v0

    .line 1937
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    .line 1927
    .end local v15    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .end local v16    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v17    # "packageName":Ljava/lang/String;
    :goto_8e
    add-int/lit8 v14, v14, 0x1

    goto :goto_5f

    .line 1941
    .end local v14    # "i":I
    :cond_91
    new-instance v0, Lcom/android/server/pm/CrossProfileDomainInfo;

    invoke-direct {v0, v12, v13}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    return-object v0
.end method

.method private filterCandidatesWithDomainPreferredActivitiesLPr(Landroid/content/Intent;JLjava/util/List;Lcom/android/server/pm/CrossProfileDomainInfo;I)Ljava/util/List;
    .registers 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "matchFlags"    # J
    .param p5, "xpDomainInfo"    # Lcom/android/server/pm/CrossProfileDomainInfo;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1470
    .local p4, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v8, v0

    .line 1472
    .local v8, "debug":Z
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v9, "PackageManager"

    if-nez v0, :cond_16

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_30

    .line 1473
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filtering results with preferred activities. Candidates count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1474
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1473
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_30
    nop

    .line 1478
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;JLjava/util/List;Lcom/android/server/pm/CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1481
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v1, :cond_44

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_87

    .line 1482
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filtered results with preferred activities. New candidates count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1483
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1482
    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1485
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_62

    .line 1488
    :cond_87
    return-object v0
.end method

.method private filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;
    .registers 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1498
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p2, :cond_3

    .line 1499
    return-object p1

    .line 1502
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_20

    .line 1503
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1504
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1d

    .line 1505
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1502
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1508
    .end local v0    # "i":I
    :cond_20
    return-object p1
.end method

.method private filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 23
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # J

    .line 2384
    move-object/from16 v0, p0

    const-wide/32 v1, 0x4000000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 2386
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2387
    .local v1, "appId":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_2b

    const/16 v3, 0x7d0

    if-eq v1, v3, :cond_2b

    if-nez v1, :cond_1f

    move/from16 v4, p2

    goto :goto_2d

    .line 2392
    :cond_1f
    nop

    .line 2393
    const-string v3, "android.permission.INSTALL_PACKAGES"

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_30

    .line 2394
    return v2

    .line 2387
    :cond_2b
    move/from16 v4, p2

    .line 2389
    :goto_2d
    return v2

    .line 2384
    .end local v1    # "appId":I
    :cond_2e
    move/from16 v4, p2

    .line 2399
    :cond_30
    if-eqz p1, :cond_af

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_af

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result v1

    if-nez v1, :cond_45

    move/from16 v5, p3

    goto :goto_b1

    .line 2403
    :cond_45
    nop

    .line 2404
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v3

    int-to-long v5, v3

    .line 2403
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    .line 2405
    .local v1, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_5e

    .line 2406
    return v2

    .line 2409
    :cond_5e
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v5, p3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2410
    .local v3, "resolvedUid":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2411
    .local v6, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_70

    .line 2412
    return v7

    .line 2415
    :cond_70
    array-length v8, v6

    move v9, v2

    :goto_72
    if-ge v9, v8, :cond_ae

    aget-object v10, v6, v9

    .line 2416
    .local v10, "uidPackageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 2417
    return v2

    .line 2419
    :cond_81
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 2420
    .local v11, "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_ab

    .line 2421
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v12

    .line 2422
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2421
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 2423
    .local v12, "index":I
    if-gez v12, :cond_98

    .line 2424
    goto :goto_ab

    .line 2426
    :cond_98
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v13

    aget-wide v13, v13, v12

    .line 2427
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_ab

    .line 2428
    return v2

    .line 2415
    .end local v10    # "uidPackageName":Ljava/lang/String;
    .end local v11    # "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "index":I
    :cond_ab
    :goto_ab
    add-int/lit8 v9, v9, 0x1

    goto :goto_72

    .line 2432
    :cond_ae
    return v7

    .line 2399
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "resolvedUid":I
    .end local v6    # "uidPackageNames":[Ljava/lang/String;
    :cond_af
    move/from16 v5, p3

    .line 2400
    :goto_b1
    return v2
.end method

.method private filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 23
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # J

    .line 2328
    move-object/from16 v0, p0

    const-wide/32 v1, 0x4000000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 2330
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2331
    .local v1, "appId":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_2b

    const/16 v3, 0x7d0

    if-eq v1, v3, :cond_2b

    if-nez v1, :cond_1f

    move/from16 v4, p2

    goto :goto_2d

    .line 2336
    :cond_1f
    nop

    .line 2337
    const-string v3, "android.permission.INSTALL_PACKAGES"

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_30

    .line 2338
    return v2

    .line 2331
    :cond_2b
    move/from16 v4, p2

    .line 2333
    :goto_2d
    return v2

    .line 2328
    .end local v1    # "appId":I
    :cond_2e
    move/from16 v4, p2

    .line 2343
    :cond_30
    if-eqz p1, :cond_ae

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_ae

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v1

    if-nez v1, :cond_45

    move/from16 v5, p3

    goto :goto_b0

    .line 2347
    :cond_45
    nop

    .line 2348
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v5

    .line 2347
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    .line 2349
    .local v1, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_5d

    .line 2350
    return v2

    .line 2353
    :cond_5d
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v5, p3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2354
    .local v3, "resolvedUid":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2355
    .local v6, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_6f

    .line 2356
    return v7

    .line 2359
    :cond_6f
    array-length v8, v6

    move v9, v2

    :goto_71
    if-ge v9, v8, :cond_ad

    aget-object v10, v6, v9

    .line 2360
    .local v10, "uidPackageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_80

    .line 2361
    return v2

    .line 2363
    :cond_80
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 2364
    .local v11, "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_aa

    .line 2365
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v12

    .line 2366
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2365
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 2367
    .local v12, "index":I
    if-gez v12, :cond_97

    .line 2368
    goto :goto_aa

    .line 2370
    :cond_97
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v13

    aget-wide v13, v13, v12

    .line 2371
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_aa

    .line 2372
    return v2

    .line 2359
    .end local v10    # "uidPackageName":Ljava/lang/String;
    .end local v11    # "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "index":I
    :cond_aa
    :goto_aa
    add-int/lit8 v9, v9, 0x1

    goto :goto_71

    .line 2376
    :cond_ad
    return v7

    .line 2343
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "resolvedUid":I
    .end local v6    # "uidPackageNames":[Ljava/lang/String;
    :cond_ae
    move/from16 v5, p3

    .line 2344
    :goto_b0
    return v2
.end method

.method private findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterCallingUid"    # I
    .param p3, "userId"    # I

    .line 844
    move-object v0, p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSTALL_FAILURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    .local v1, "failureActivityIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    move-object v4, v1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v2

    .line 851
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 852
    .local v3, "numResults":I
    if-lez v3, :cond_3f

    .line 853
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    if-ge v4, v3, :cond_3f

    .line 854
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 855
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v6, :cond_35

    .line 856
    nop

    .line 853
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 858
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_35
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, p1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 861
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3f
    const/4 v4, 0x0

    return-object v4
.end method

.method private getBaseSdkSandboxUid()I
    .registers 2

    .line 5870
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    return v0
.end method

.method private getInstallSource(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 5172
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5175
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5176
    sget-object v1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    return-object v1

    .line 5179
    :cond_13
    if-eqz v0, :cond_25

    .line 5180
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_25

    .line 5184
    :cond_20
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    return-object v1

    .line 5181
    :cond_25
    :goto_25
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIsolatedOwner(I)I
    .registers 6
    .param p1, "isolatedUid"    # I

    .line 2122
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->get(II)I

    move-result v0

    .line 2123
    .local v0, "ownerUid":I
    if-eq v0, v1, :cond_a

    .line 2127
    return v0

    .line 2124
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No owner UID found for isolated UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPackagesForUidInternal(II)[Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "callingUid"    # I

    .line 2230
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2231
    .local v0, "isCallerInstantApp":Z
    :goto_9
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2232
    .local v1, "userId":I
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2233
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 2235
    :cond_17
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 2236
    .local v2, "appId":I
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hasCrossUserPermission(IIIZZ)Z
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z

    .line 2445
    const/4 v0, 0x1

    if-nez p5, :cond_6

    if-ne p3, p2, :cond_6

    .line 2446
    return v0

    .line 2448
    :cond_6
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_34

    if-nez p1, :cond_d

    goto :goto_34

    .line 2453
    :cond_d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/miui/xspace/XSpaceManagerStub;->canCrossUser(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2454
    return v0

    .line 2457
    :cond_18
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_21

    .line 2458
    invoke-direct {p0, v1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2460
    :cond_21
    invoke-direct {p0, v1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2461
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    nop

    .line 2460
    :goto_33
    return v0

    .line 2449
    :cond_34
    :goto_34
    return v0
.end method

.method private hasNonNegativePriority(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2469
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_12

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ltz v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 2473
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isHomeIntent(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 3579
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3580
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3581
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 3579
    :goto_1f
    return v0
.end method

.method private isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .param p4, "skipPackageCheck"    # Z
    .param p5, "flags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZJ)Z"
        }
    .end annotation

    .line 2588
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2589
    return v1

    .line 2591
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2592
    return v1

    .line 2594
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2595
    return v1

    .line 2597
    :cond_14
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1d

    .line 2598
    return v1

    .line 2600
    :cond_1d
    if-nez p4, :cond_26

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2601
    return v1

    .line 2603
    :cond_26
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2606
    if-eqz p2, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3c

    .line 2607
    :cond_34
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_59

    .line 2608
    :cond_3c
    return v1

    .line 2611
    :cond_3d
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_5e

    .line 2613
    :cond_52
    invoke-direct {p0, p3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2614
    return v1

    .line 2619
    :cond_59
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v0

    return v0

    .line 2612
    :cond_5e
    :goto_5e
    return v1
.end method

.method private isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 2660
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 2661
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    .line 2663
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_21

    .line 2664
    const-wide/32 v1, 0x10000

    and-long/2addr v1, p4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    move v5, v7

    goto :goto_17

    :cond_16
    move v5, v8

    :goto_17
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    goto :goto_26

    .line 2667
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    nop

    .line 2668
    .local v1, "pprefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2669
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    iget-boolean v4, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    if-eqz v4, :cond_3c

    .line 2670
    return v7

    .line 2672
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_3c
    goto :goto_2b

    .line 2673
    :cond_3d
    return v8
.end method

.method private isRecentsAccessingChildProfiles(II)Z
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "targetUserId"    # I

    .line 2677
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2678
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 2679
    return v1

    .line 2681
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2683
    .local v2, "token":J
    :try_start_16
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2684
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2f

    if-eq v4, v0, :cond_25

    .line 2685
    nop

    .line 2689
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2685
    return v1

    .line 2687
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2f

    .line 2689
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2687
    return v1

    .line 2689
    .end local v0    # "callingUserId":I
    :catchall_2f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2690
    throw v0
.end method

.method private isUserEnabled(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 2704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2706
    .local v0, "callingId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2707
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    .line 2709
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2707
    return v3

    .line 2709
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2710
    throw v2
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .registers 5
    .param p0, "p1"    # Landroid/content/pm/ProviderInfo;
    .param p1, "p2"    # Landroid/content/pm/ProviderInfo;

    .line 368
    iget v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 369
    .local v0, "v1":I
    iget v1, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 370
    .local v1, "v2":I
    if-le v0, v1, :cond_8

    const/4 v2, -0x1

    goto :goto_d

    :cond_8
    if-ge v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method private maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;
    .registers 34
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .param p7, "resolveForStart"    # Z
    .param p8, "isRequesterInstantApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1515
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v15, p6

    const-wide/32 v0, 0x800000

    and-long v2, p4, v0

    const-wide/16 v13, 0x0

    cmp-long v2, v2, v13

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_15

    move v2, v11

    goto :goto_16

    :cond_15
    move v2, v12

    :goto_16
    move/from16 v21, v2

    .line 1516
    .local v21, "alreadyResolvedLocally":Z
    const/4 v9, 0x0

    .line 1517
    .local v9, "localInstantApp":Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 1518
    .local v10, "blockResolution":Z
    const-string v6, "PackageManager"

    if-nez v21, :cond_b5

    .line 1519
    iget-object v2, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const-wide/16 v3, 0x40

    or-long v3, p4, v3

    or-long/2addr v0, v3

    const-wide/32 v3, 0x1000000

    or-long v4, v0, v3

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v14, v6

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v6

    .line 1527
    .local v6, "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v13, v0

    .local v13, "i":I
    :goto_3e
    if-ltz v13, :cond_b6

    .line 1528
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1529
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1530
    .local v3, "packageName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1531
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v4, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1532
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v1, v4

    move-object/from16 v2, p2

    move-object v11, v3

    move-object/from16 v19, v4

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "packageName":Ljava/lang/String;
    .local v19, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide/from16 v3, p4

    move-object/from16 v20, v5

    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .local v20, "info":Landroid/content/pm/ResolveInfo;
    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1534
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_89

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_89
    move-object/from16 v9, v20

    move-object v0, v9

    move v1, v10

    goto :goto_b8

    .line 1540
    :cond_8e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_a8

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app not approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_a8
    const/4 v10, 0x1

    .line 1546
    move-object v0, v9

    move v1, v10

    goto :goto_b8

    .line 1531
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v19    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v20    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_ac
    move-object v11, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 1527
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v13, v13, -0x1

    const/4 v11, 0x1

    goto :goto_3e

    .line 1518
    .end local v6    # "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "i":I
    :cond_b5
    move-object v14, v6

    .line 1551
    :cond_b6
    move-object v0, v9

    move v1, v10

    .end local v9    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .end local v10    # "blockResolution":Z
    .local v0, "localInstantApp":Landroid/content/pm/ResolveInfo;
    .local v1, "blockResolution":Z
    :goto_b8
    const/4 v2, 0x0

    .line 1552
    .local v2, "auxiliaryResponse":Landroid/content/pm/AuxiliaryResolveInfo;
    if-nez v1, :cond_118

    .line 1553
    if-nez v0, :cond_104

    .line 1555
    const-wide/32 v3, 0x40000

    const-string/jumbo v5, "resolveEphemeral"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1556
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1557
    .local v5, "token":Ljava/lang/String;
    nop

    .line 1558
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v6

    .line 1559
    .local v6, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    new-instance v22, Landroid/content/pm/InstantAppRequest;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1564
    invoke-virtual {v6}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v23

    move-object/from16 v9, v22

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v24, v14

    move-object/from16 v14, v19

    move/from16 v15, p8

    move/from16 v16, p6

    move-object/from16 v17, v20

    move/from16 v18, p7

    move-object/from16 v19, v23

    move-object/from16 v20, v5

    invoke-direct/range {v9 .. v20}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 1565
    .local v9, "requestObject":Landroid/content/pm/InstantAppRequest;
    iget-object v10, v7, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v11, v7, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v7, v10, v11, v9}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseOne(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v2

    .line 1567
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1568
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .end local v9    # "requestObject":Landroid/content/pm/InstantAppRequest;
    goto :goto_11a

    .line 1574
    :cond_104
    move-object/from16 v24, v14

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1575
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v10, 0x0

    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v12, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v14, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    move-object v2, v4

    goto :goto_11a

    .line 1552
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_118
    move-object/from16 v24, v14

    .line 1580
    :goto_11a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-eqz v3, :cond_123

    if-nez v2, :cond_123

    .line 1581
    return-object v8

    .line 1583
    :cond_123
    iget-object v3, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1584
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1585
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_1a9

    move/from16 v4, p6

    invoke-interface {v3, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 1586
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1585
    const-wide/16 v9, 0x0

    invoke-static {v5, v6, v9, v10}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v5

    if-nez v5, :cond_144

    goto :goto_1ab

    .line 1589
    :cond_144
    new-instance v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1590
    .local v5, "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    nop

    .line 1592
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1593
    invoke-interface {v3, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 1591
    invoke-static {v6, v9, v10, v11, v4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1594
    const v6, 0x588000

    iput v6, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 1597
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_175

    .line 1599
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1601
    :cond_175
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_193

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_193

    .line 1602
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1603
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 1602
    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1605
    :cond_193
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1607
    iput-boolean v6, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1608
    iput-object v2, v5, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1609
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_1a5

    .line 1610
    const-string v6, "Adding ephemeral installer to the ResolveInfo list"

    move-object/from16 v9, v24

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_1a5
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    return-object v8

    .line 1585
    .end local v5    # "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    :cond_1a9
    move/from16 v4, p6

    .line 1587
    :goto_1ab
    return-object v8
.end method

.method private queryCrossProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZ)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 26
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "sourceUserId"    # I
    .param p7, "matchInCurrentProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIZ)",
            "Lcom/android/server/pm/CrossProfileDomainInfo;"
        }
    .end annotation

    .line 1984
    .local p1, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-nez v8, :cond_8

    .line 1985
    return-object v9

    .line 1990
    :cond_8
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v10, v0

    .line 1992
    .local v10, "alreadyTriedUserIds":Landroid/util/SparseBooleanArray;
    const/4 v11, 0x0

    .line 1994
    .local v11, "resultInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 1995
    .local v12, "size":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_15
    if-ge v13, v12, :cond_65

    .line 1996
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1997
    .local v14, "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v14}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v15

    .line 1998
    .local v15, "targetUserId":I
    nop

    .line 1999
    invoke-virtual {v14}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2f

    move v0, v6

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    move/from16 v16, v0

    .line 2000
    .local v16, "skipCurrentProfile":Z
    nop

    .line 2001
    invoke-virtual {v14}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3c

    move v1, v6

    :cond_3c
    move/from16 v17, v1

    .line 2002
    .local v17, "skipCurrentProfileIfNoMatchFound":Z
    if-nez v16, :cond_61

    invoke-virtual {v10, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_61

    if-eqz v17, :cond_4a

    if-nez p7, :cond_61

    .line 2006
    :cond_4a
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move v9, v6

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JI)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    .line 2008
    .local v0, "info":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-eqz v0, :cond_5e

    .line 2009
    move-object v11, v0

    .line 2010
    goto :goto_65

    .line 2012
    :cond_5e
    invoke-virtual {v10, v15, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1995
    .end local v0    # "info":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v14    # "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v15    # "targetUserId":I
    .end local v16    # "skipCurrentProfile":Z
    .end local v17    # "skipCurrentProfileIfNoMatchFound":Z
    :cond_61
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    goto :goto_15

    .line 2016
    .end local v13    # "i":I
    :cond_65
    :goto_65
    if-nez v11, :cond_69

    .line 2017
    const/4 v0, 0x0

    return-object v0

    .line 2020
    :cond_69
    const/4 v0, 0x0

    iget-object v1, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2021
    .local v1, "forwardingResolveInfo":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-direct {v7, v2}, Lcom/android/server/pm/ComputerEngine;->isUserEnabled(I)Z

    move-result v2

    if-nez v2, :cond_75

    .line 2022
    return-object v0

    .line 2025
    :cond_75
    nop

    .line 2026
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move/from16 v3, p6

    invoke-direct {v7, v2, v3}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 2028
    .local v2, "filteredResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 2029
    return-object v0

    .line 2032
    :cond_87
    return-object v11
.end method

.method private querySkipCurrentProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .registers 18
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "sourceUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 2038
    .local p1, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    move-object v0, p1

    if-eqz v0, :cond_2b

    .line 2039
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2040
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_2b

    .line 2041
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 2042
    .local v3, "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v3}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_28

    .line 2045
    move-object v4, p0

    move-object v5, v3

    move-object v6, p2

    move-object v7, p3

    move-wide v8, p4

    move/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JI)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v4

    .line 2047
    .local v4, "info":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-eqz v4, :cond_28

    .line 2048
    iget-object v5, v4, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v5

    .line 2040
    .end local v3    # "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v4    # "info":Lcom/android/server/pm/CrossProfileDomainInfo;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2053
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2b
    const/4 v1, 0x0

    return-object v1
.end method

.method private resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "callingUid"    # I

    .line 2140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, "normalizedPackageName":Ljava/lang/String;
    if-eqz v1, :cond_e

    move-object v3, v1

    goto :goto_f

    :cond_e
    move-object v3, v2

    :goto_f
    move-object v2, v3

    .line 2144
    .end local p1    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 2145
    invoke-interface {v3, v2}, Lcom/android/server/pm/SharedLibrariesRead;->getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v3

    .line 2146
    .local v3, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz v3, :cond_c5

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_22

    move/from16 v8, p4

    goto/16 :goto_c7

    .line 2151
    :cond_22
    const/4 v4, 0x0

    .line 2152
    .local v4, "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 2153
    .local v5, "callingAppId":I
    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_6b

    const/16 v6, 0x7d0

    if-eq v5, v6, :cond_6b

    if-eqz v5, :cond_6b

    .line 2155
    new-instance v6, Landroid/util/LongSparseLongArray;

    invoke-direct {v6}, Landroid/util/LongSparseLongArray;-><init>()V

    move-object v4, v6

    .line 2156
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2157
    .local v7, "libName":Ljava/lang/String;
    move/from16 v8, p4

    invoke-direct {v0, v8, v8}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v9

    .line 2158
    .local v9, "uidPackages":[Ljava/lang/String;
    if-eqz v9, :cond_6d

    .line 2159
    array-length v10, v9

    :goto_4b
    if-ge v6, v10, :cond_6d

    aget-object v11, v9, v6

    .line 2160
    .local v11, "uidPackage":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 2161
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    .line 2162
    .local v13, "libIdx":I
    if-ltz v13, :cond_68

    .line 2163
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v14

    aget-wide v14, v14, v13

    .line 2164
    .local v14, "libVersion":J
    invoke-virtual {v4, v14, v15, v14, v15}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 2159
    .end local v11    # "uidPackage":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "libIdx":I
    .end local v14    # "libVersion":J
    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 2153
    .end local v7    # "libName":Ljava/lang/String;
    .end local v9    # "uidPackages":[Ljava/lang/String;
    :cond_6b
    move/from16 v8, p4

    .line 2171
    :cond_6d
    if-eqz v4, :cond_76

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-gtz v6, :cond_76

    .line 2172
    return-object v2

    .line 2176
    :cond_76
    const/4 v6, 0x0

    .line 2177
    .local v6, "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v7

    .line 2178
    .local v7, "versionCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7c
    if-ge v9, v7, :cond_bd

    .line 2179
    invoke-virtual {v3, v9}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/SharedLibraryInfo;

    .line 2180
    .local v10, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v4, :cond_91

    .line 2181
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v11

    .line 2180
    invoke-virtual {v4, v11, v12}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v11

    if-gez v11, :cond_91

    .line 2182
    goto :goto_ba

    .line 2184
    :cond_91
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v11

    .line 2185
    .local v11, "libVersionCode":J
    const-wide/16 v13, -0x1

    cmp-long v13, p2, v13

    if-eqz v13, :cond_a8

    .line 2186
    cmp-long v13, v11, p2

    if-nez v13, :cond_ba

    .line 2187
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 2189
    :cond_a8
    if-nez v6, :cond_ac

    .line 2190
    move-object v6, v10

    goto :goto_ba

    .line 2191
    :cond_ac
    nop

    .line 2192
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-lez v13, :cond_ba

    .line 2193
    move-object v6, v10

    .line 2178
    .end local v10    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v11    # "libVersionCode":J
    :cond_ba
    :goto_ba
    add-int/lit8 v9, v9, 0x1

    goto :goto_7c

    .line 2197
    .end local v9    # "i":I
    :cond_bd
    if-eqz v6, :cond_c4

    .line 2198
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 2201
    :cond_c4
    return-object v2

    .line 2146
    .end local v4    # "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    .end local v5    # "callingAppId":I
    .end local v6    # "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    .end local v7    # "versionCount":I
    :cond_c5
    move/from16 v8, p4

    .line 2147
    :goto_c7
    return-object v2
.end method

.method private safeMode()Z
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result v0

    return v0
.end method

.method private updateFlags(JI)J
    .registers 10
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2851
    const-wide/32 v0, 0xc0000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    goto :goto_1e

    .line 2857
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    .line 2859
    .local v2, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2860
    or-long/2addr p1, v0

    goto :goto_1e

    .line 2862
    :cond_1a
    const-wide/32 v0, 0x80000

    or-long/2addr p1, v0

    .line 2867
    .end local v2    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    :goto_1e
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2868
    const-wide/32 v0, 0x402000

    or-long/2addr p1, v0

    .line 2871
    :cond_30
    return-wide p1
.end method


# virtual methods
.method public activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 27
    .param p1, "resolveComponentName"    # Landroid/content/ComponentName;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;

    .line 3857
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_e

    .line 3859
    return v9

    .line 3861
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3862
    .local v10, "callingUid":I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 3863
    .local v11, "callingUserId":I
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v12

    .line 3864
    .local v12, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    const/4 v13, 0x0

    if-nez v12, :cond_20

    .line 3865
    return v13

    .line 3867
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 3868
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v14, :cond_2b

    .line 3869
    return v13

    .line 3871
    :cond_2b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v10

    move-object/from16 v3, p2

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3873
    return v13

    .line 3875
    :cond_3a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_71

    .line 3876
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v15

    .line 3877
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 3878
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v20

    .line 3877
    const-string v21, "PackageManager"

    move-object/from16 v17, p4

    invoke-virtual/range {v15 .. v21}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6e

    .line 3879
    return v9

    .line 3875
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 3882
    .end local v0    # "i":I
    :cond_71
    return v13
.end method

.method protected androidApplication()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .registers 30
    .param p2, "ephemeralPkgName"    # Ljava/lang/String;
    .param p3, "allowDynamicSplits"    # Z
    .param p4, "filterCallingUid"    # I
    .param p5, "resolveForStart"    # Z
    .param p6, "userId"    # I
    .param p7, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZIZI",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1323
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p6

    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_17

    invoke-direct {v6, v9}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v11

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move v12, v0

    .line 1324
    .local v12, "blockInstant":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v13, v0

    .local v13, "i":I
    :goto_1f
    if-ltz v13, :cond_15a

    .line 1325
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1327
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    iget-boolean v0, v14, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-eqz v0, :cond_37

    if-eqz v12, :cond_37

    .line 1328
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1329
    move/from16 v15, p4

    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1332
    :cond_37
    if-eqz p3, :cond_e4

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_e4

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_e4

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 1335
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_6d

    .line 1338
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_64

    .line 1339
    const-string v0, "No installer - not adding it to the ResolveInfo list"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_64
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1342
    move/from16 v15, p4

    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1344
    :cond_6d
    if-eqz v12, :cond_84

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-virtual {v6, v0, v9, v2}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1346
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1347
    move/from16 v15, p4

    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1351
    :cond_84
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_8d

    .line 1352
    const-string v0, "Adding installer to the ResolveInfo list"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_8d
    new-instance v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1356
    .local v0, "installerInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v15, p4

    invoke-direct {v6, v1, v15, v9}, Lcom/android/server/pm/ComputerEngine;->findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v1

    .line 1358
    .local v1, "installFailureActivity":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v21}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1364
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1369
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1370
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->resolveLabelResId()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1371
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->resolveIconResId()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1372
    iput-boolean v11, v0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1373
    invoke-interface {v7, v13, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1335
    .end local v0    # "installerInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "installFailureActivity":Landroid/content/ComponentName;
    :cond_e1
    move/from16 v15, p4

    goto :goto_e6

    .line 1332
    :cond_e4
    move/from16 v15, p4

    .line 1376
    :goto_e6
    if-nez v8, :cond_115

    .line 1378
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1379
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v10

    .line 1380
    .local v10, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1381
    const/4 v5, 0x0

    invoke-virtual {v6, v0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 1382
    .local v16, "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez p5, :cond_112

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 1383
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object v3, v10

    move-object/from16 v4, v16

    move/from16 v17, v5

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_111

    .line 1385
    goto :goto_156

    .line 1387
    .end local v10    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v16    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_111
    goto :goto_153

    .line 1382
    .restart local v10    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local v16    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_112
    move/from16 v17, v5

    goto :goto_156

    .line 1387
    .end local v10    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v16    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_115
    const/16 v17, 0x0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1389
    goto :goto_156

    .line 1390
    :cond_122
    if-eqz p5, :cond_13f

    .line 1391
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_132

    .line 1392
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_13f

    .line 1393
    :cond_132
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13f

    .line 1394
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_13f

    .line 1396
    goto :goto_156

    .line 1397
    :cond_13f
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_153

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1399
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_153

    .line 1401
    goto :goto_156

    .line 1403
    :cond_153
    :goto_153
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1324
    .end local v14    # "info":Landroid/content/pm/ResolveInfo;
    :goto_156
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1f

    :cond_15a
    move/from16 v15, p4

    .line 1405
    .end local v13    # "i":I
    return-object v7
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "callingUid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 5499
    nop

    .line 5500
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5501
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_19

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I

    .line 5569
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5571
    nop

    .line 5572
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 5573
    .local v8, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    const/4 v9, 0x1

    if-eqz v8, :cond_2e

    .line 5574
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 5575
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_2b

    .line 5576
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v2

    move/from16 v10, p4

    if-ne v2, v10, :cond_28

    return v9

    .line 5575
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2b
    move/from16 v10, p4

    goto :goto_30

    .line 5573
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_2e
    move/from16 v10, p4

    .line 5579
    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_7c

    .line 5581
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 5582
    .local v12, "callingUid":I
    move/from16 v13, p3

    invoke-virtual {v7, v13}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    .line 5583
    .local v14, "parent":Landroid/content/pm/UserInfo;
    if-nez v14, :cond_44

    .line 5584
    return v11

    .line 5586
    :cond_44
    const-wide/16 v15, 0x0

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    const/16 v17, 0x0

    iget v2, v14, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v4, 0x0

    .line 5588
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v18

    .line 5586
    move-wide v1, v15

    move v3, v6

    move v4, v12

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v0

    .line 5590
    .local v0, "flags":J
    const-wide/32 v2, 0x10000

    or-long v15, v0, v2

    .line 5591
    .end local v0    # "flags":J
    .local v15, "flags":J
    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v15

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    .line 5593
    .local v0, "xpDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-eqz v0, :cond_7a

    goto :goto_7b

    :cond_7a
    move v9, v11

    :goto_7b
    return v9

    .line 5595
    .end local v0    # "xpDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v12    # "callingUid":I
    .end local v14    # "parent":Landroid/content/pm/UserInfo;
    .end local v15    # "flags":J
    :cond_7c
    move/from16 v13, p3

    return v11
.end method

.method public canPackageQuery(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 5540
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 5541
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5542
    .local v0, "callingUid":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "may package query"

    move-object v2, p0

    move v3, v0

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5544
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5545
    .local v2, "sourceSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5546
    .local v3, "targetSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v4, 0x1

    if-eqz v2, :cond_29

    if-nez v3, :cond_27

    goto :goto_29

    :cond_27
    move v5, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move v5, v4

    .line 5547
    .local v5, "throwException":Z
    :goto_2a
    if-nez v5, :cond_3c

    .line 5548
    nop

    .line 5549
    invoke-virtual {p0, v2, v0, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    .line 5550
    .local v6, "filterSource":Z
    nop

    .line 5551
    invoke-virtual {p0, v3, v0, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    .line 5553
    .local v7, "filterTarget":Z
    if-nez v6, :cond_3a

    if-eqz v7, :cond_3b

    :cond_3a
    move v1, v4

    :cond_3b
    move v5, v1

    .line 5555
    .end local v6    # "filterSource":Z
    .end local v7    # "filterTarget":Z
    :cond_3c
    if-nez v5, :cond_4c

    .line 5559
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 5560
    .local v1, "sourcePackageUid":I
    invoke-virtual {p0, v3, v1, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4

    .line 5556
    .end local v1    # "sourcePackageUid":I
    :cond_4c
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v4, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package(s) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and/or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public canQueryPackage(ILjava/lang/String;)Z
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .line 5443
    const/4 v0, 0x1

    if-eqz p1, :cond_81

    if-nez p2, :cond_7

    goto/16 :goto_81

    .line 5446
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5447
    .local v1, "setting":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 5448
    return v2

    .line 5451
    :cond_15
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5452
    .local v3, "userId":I
    const-wide/16 v4, 0x0

    .line 5453
    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 5452
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 5455
    .local v4, "targetAppId":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_42

    .line 5456
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 5457
    .local v2, "targetSetting":Ljava/lang/Object;
    instance-of v5, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_39

    .line 5458
    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, v5, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    xor-int/2addr v0, v5

    return v0

    .line 5461
    :cond_39
    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, v5, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v5

    xor-int/2addr v0, v5

    return v0

    .line 5468
    .end local v2    # "targetSetting":Ljava/lang/Object;
    :cond_42
    instance-of v5, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_5a

    .line 5469
    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 5470
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v5, :cond_58

    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v6, v5, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    goto :goto_59

    :cond_58
    move v0, v2

    :goto_59
    return v0

    .line 5472
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_5a
    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 5474
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v5

    .line 5475
    .local v5, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "i":I
    :goto_66
    if-ltz v6, :cond_80

    .line 5476
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 5477
    .local v7, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v7, :cond_7d

    iget-object v8, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v8, v7, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 5478
    return v0

    .line 5475
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_7d
    add-int/lit8 v6, v6, -0x1

    goto :goto_66

    .line 5481
    .end local v6    # "i":I
    :cond_80
    return v2

    .line 5444
    .end local v1    # "setting":Ljava/lang/Object;
    .end local v3    # "userId":I
    .end local v4    # "targetAppId":I
    .end local v5    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_81
    :goto_81
    return v0
.end method

.method public canRequestPackageInstalls(Ljava/lang/String;IIZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "throwIfPermNotDeclared"    # Z

    .line 3997
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result v0

    .line 3998
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq p2, v0, :cond_36

    if-eqz p2, :cond_36

    if-ne p2, v1, :cond_13

    goto :goto_36

    .line 4000
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not own package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4003
    :cond_36
    :goto_36
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    .line 4004
    return v2

    .line 4006
    :cond_3e
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4007
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_49

    .line 4008
    return v2

    .line 4010
    :cond_49
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_52

    .line 4011
    return v2

    .line 4013
    :cond_52
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 4015
    const-string v3, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    .line 4018
    .local v3, "message":Ljava/lang/String;
    const-string v4, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    if-nez p4, :cond_6a

    .line 4021
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    return v2

    .line 4019
    :cond_6a
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4026
    .end local v3    # "message":Ljava/lang/String;
    :cond_70
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/ComputerEngine;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public final canViewInstantApps(II)Z
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 2302
    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_6

    .line 2303
    return v0

    .line 2305
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    .line 2307
    return v0

    .line 2309
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIEW_INSTANT_APPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 2311
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 2312
    .local v1, "homeComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_2d

    .line 2313
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2314
    return v0

    .line 2317
    :cond_2d
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 2318
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v2

    .line 2317
    :goto_39
    return v0

    .line 2320
    .end local v1    # "homeComponent":Landroid/content/ComponentName;
    :cond_3a
    return v2
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "names"    # [Ljava/lang/String;

    .line 3785
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3786
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3787
    return-object p1

    .line 3789
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3790
    .local v1, "out":[Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3791
    .local v2, "callingUserId":I
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3792
    .local v3, "canViewInstantApps":Z
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_5b

    .line 3793
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3794
    .local v6, "cur":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3795
    .local v7, "translateName":Z
    if-eqz v6, :cond_50

    .line 3796
    aget-object v8, p1, v4

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 3797
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v9, 0x0

    if-eqz v8, :cond_39

    .line 3798
    invoke-interface {v8, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_39

    move v10, v5

    goto :goto_3a

    :cond_39
    move v10, v9

    .line 3799
    .local v10, "targetIsInstantApp":Z
    :goto_3a
    if-eqz v10, :cond_4e

    if-nez v3, :cond_4e

    iget-object v11, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3802
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    .line 3801
    invoke-virtual {v11, v2, v12, v13}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v11

    if-eqz v11, :cond_4f

    :cond_4e
    move v9, v5

    :cond_4f
    move v7, v9

    .line 3804
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "targetIsInstantApp":Z
    :cond_50
    if-eqz v7, :cond_54

    move-object v8, v6

    goto :goto_56

    :cond_54
    aget-object v8, p1, v4

    :goto_56
    aput-object v8, v1, v4

    .line 3792
    .end local v6    # "cur":Ljava/lang/String;
    .end local v7    # "translateName":Z
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 3806
    .end local v4    # "i":I
    :cond_5b
    return-object v1
.end method

.method public checkPackageFrozen(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5911
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 5912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to be frozen!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5914
    :cond_2b
    return-void
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .line 4283
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4284
    .local v0, "p1":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4286
    .local v1, "p2":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v2, 0x0

    if-nez v0, :cond_15

    move-object v3, v2

    goto :goto_1d

    :cond_15
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4288
    .local v3, "ps1":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_1d
    if-nez v1, :cond_20

    goto :goto_28

    :cond_20
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 4289
    .local v2, "ps2":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_28
    const/4 v4, -0x4

    if-eqz v0, :cond_55

    if-eqz v3, :cond_55

    if-eqz v1, :cond_55

    if-nez v2, :cond_32

    goto :goto_55

    .line 4292
    :cond_32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4293
    .local v5, "callingUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 4294
    .local v6, "callingUserId":I
    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-nez v7, :cond_54

    .line 4295
    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_47

    goto :goto_54

    .line 4298
    :cond_47
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v4

    return v4

    .line 4296
    :cond_54
    :goto_54
    return v4

    .line 4290
    .end local v5    # "callingUid":I
    .end local v6    # "callingUserId":I
    :cond_55
    :goto_55
    return v4
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2822
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkUidSignatures(II)I
    .registers 12
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .line 4303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4304
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4306
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 4307
    .local v2, "appId1":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4310
    .local v3, "appId2":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4311
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, -0x4

    if-eqz v4, :cond_75

    .line 4312
    instance-of v6, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_2c

    .line 4313
    move-object v6, v4

    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    .line 4314
    .local v6, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 4315
    return v5

    .line 4317
    :cond_27
    iget-object v7, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v6, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 4318
    .local v6, "p1SigningDetails":Landroid/content/pm/SigningDetails;
    goto :goto_3f

    .end local v6    # "p1SigningDetails":Landroid/content/pm/SigningDetails;
    :cond_2c
    instance-of v6, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_74

    .line 4319
    move-object v6, v4

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 4320
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 4321
    return v5

    .line 4323
    :cond_3a
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    .line 4324
    .local v6, "p1SigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 4330
    :goto_3f
    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4331
    if-eqz v4, :cond_73

    .line 4332
    instance-of v7, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v7, :cond_5a

    .line 4333
    move-object v7, v4

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    .line 4334
    .local v7, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v7, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 4335
    return v5

    .line 4337
    :cond_55
    iget-object v5, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 4338
    .end local v7    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .local v5, "p2SigningDetails":Landroid/content/pm/SigningDetails;
    goto :goto_6d

    .end local v5    # "p2SigningDetails":Landroid/content/pm/SigningDetails;
    :cond_5a
    instance-of v7, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v7, :cond_72

    .line 4339
    move-object v7, v4

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 4340
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v7, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 4341
    return v5

    .line 4343
    :cond_68
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    .line 4344
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "p2SigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 4350
    :goto_6d
    invoke-direct {p0, v6, v5}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v7

    return v7

    .line 4345
    .end local v5    # "p2SigningDetails":Landroid/content/pm/SigningDetails;
    :cond_72
    return v5

    .line 4348
    :cond_73
    return v5

    .line 4325
    .end local v6    # "p1SigningDetails":Landroid/content/pm/SigningDetails;
    :cond_74
    return v5

    .line 4328
    :cond_75
    return v5
.end method

.method public final createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .registers 13
    .param p1, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I

    .line 1946
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1947
    .local v0, "forwardingResolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1950
    .local v1, "ident":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_4f

    .line 1952
    .local v3, "targetIsProfile":Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1953
    nop

    .line 1955
    if-eqz v3, :cond_1c

    .line 1956
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .local v4, "className":Ljava/lang/String;
    goto :goto_1e

    .line 1958
    .end local v4    # "className":Ljava/lang/String;
    :cond_1c
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 1960
    .restart local v4    # "className":Ljava/lang/String;
    :goto_1e
    new-instance v5, Landroid/content/ComponentName;

    .line 1961
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    .local v5, "forwardingActivityComponentName":Landroid/content/ComponentName;
    const-wide/16 v6, 0x0

    .line 1963
    invoke-virtual {p0, v5, v6, v7, p2}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1965
    .local v6, "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v7, 0x1

    if-nez v3, :cond_36

    .line 1966
    iput p3, v6, Landroid/content/pm/ActivityInfo;->showUserIcon:I

    .line 1967
    iput-boolean v7, v0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1969
    :cond_36
    iput-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1970
    const/4 v8, 0x0

    iput v8, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1971
    iput v8, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1972
    iput v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1973
    iput-boolean v7, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1974
    new-instance v7, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v7, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1975
    iput p3, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 1976
    return-object v0

    .line 1952
    .end local v3    # "targetIsProfile":Z
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "forwardingActivityComponentName":Landroid/content/ComponentName;
    .end local v6    # "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    :catchall_4f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1953
    throw v3
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .param p1, "names"    # [Ljava/lang/String;

    .line 3760
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3761
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3762
    return-object p1

    .line 3764
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3765
    .local v1, "out":[Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3766
    .local v2, "callingUserId":I
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3767
    .local v3, "canViewInstantApps":Z
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_59

    .line 3768
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3769
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v7, 0x0

    .line 3770
    .local v7, "translateName":Z
    if-eqz v6, :cond_4b

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4b

    .line 3771
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 3772
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v8

    .line 3773
    .local v8, "targetIsInstantApp":Z
    if-eqz v8, :cond_49

    if-nez v3, :cond_49

    iget-object v9, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3776
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    .line 3775
    invoke-virtual {v9, v2, v10, v11}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v9

    if-eqz v9, :cond_47

    goto :goto_49

    :cond_47
    const/4 v9, 0x0

    goto :goto_4a

    :cond_49
    :goto_49
    move v9, v5

    :goto_4a
    move v7, v9

    .line 3778
    .end local v8    # "targetIsInstantApp":Z
    :cond_4b
    if-eqz v7, :cond_52

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v8

    goto :goto_54

    :cond_52
    aget-object v8, p1, v4

    :goto_54
    aput-object v8, v1, v4

    .line 3767
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "translateName":Z
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 3780
    .end local v4    # "i":I
    :cond_59
    return-object v1
.end method

.method public dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 21
    .param p1, "type"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 3165
    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const-string v2, "Failed writing: "

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3166
    .local v10, "packageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 3167
    .local v11, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v12

    .line 3170
    .local v12, "checkin":Z
    if-eqz v10, :cond_1b

    if-nez v11, :cond_1b

    .line 3171
    return-void

    .line 3174
    :cond_1b
    const/4 v0, 0x0

    const-string v3, "]"

    const-string v4, "["

    const-string v5, "  "

    sparse-switch p1, :sswitch_data_2d2

    move-object/from16 v4, p2

    goto/16 :goto_2d1

    .line 3220
    :sswitch_29
    if-nez v11, :cond_2c

    goto :goto_34

    :cond_2c
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_34
    move-object v4, v0

    .line 3221
    .local v4, "filteringAppId":Ljava/lang/Integer;
    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3222
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ComputerEngine;)V

    .line 3221
    move-object/from16 v3, p3

    move-object/from16 v5, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterSnapshot;->dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 3224
    move-object/from16 v4, p2

    goto/16 :goto_2d1

    .line 3298
    .end local v4    # "filteringAppId":Ljava/lang/Integer;
    :sswitch_4d
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v0, v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3299
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 3300
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3302
    :cond_5b
    const-string v2, "Compiler stats:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3303
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3305
    if-eqz v11, :cond_6a

    .line 3306
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .local v2, "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    goto :goto_74

    .line 3308
    .end local v2    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_6a
    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 3311
    .restart local v2    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_74
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_78
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3312
    .local v6, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 3313
    .local v7, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v7, :cond_8b

    .line 3314
    goto :goto_78

    .line 3316
    :cond_8b
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 3317
    .local v13, "pkgName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3320
    iget-object v14, v1, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 3321
    invoke-virtual {v14, v13}, Lcom/android/server/pm/CompilerStats;->getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v14

    .line 3322
    .local v14, "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    if-nez v14, :cond_b8

    .line 3323
    const-string v15, "(No recorded stats)"

    invoke-virtual {v0, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bb

    .line 3325
    :cond_b8
    invoke-virtual {v14, v0}, Lcom/android/server/pm/CompilerStats$PackageStats;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3327
    :goto_bb
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3328
    .end local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    goto :goto_78

    .line 3329
    :cond_bf
    move-object/from16 v4, p2

    goto/16 :goto_2d1

    .line 3249
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :sswitch_c3
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v0, v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3250
    .restart local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 3251
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3253
    :cond_d1
    const-string v2, "Dexopt state:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3255
    const/4 v2, 0x0

    .line 3256
    .restart local v2    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    if-eqz v11, :cond_12f

    .line 3259
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3260
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 3261
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v5, :cond_fd

    .line 3262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find AndroidPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    return-void

    .line 3265
    :cond_fd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3267
    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iget-object v4, v1, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 3268
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v4

    .line 3267
    invoke-virtual {v3, v0, v5, v11, v4}, Lcom/android/server/pm/PackageDexOptimizer;->dumpSingleDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V

    .line 3269
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3270
    return-void

    .line 3273
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_12f
    iget-object v5, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 3276
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3277
    .restart local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 3278
    .restart local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v7, :cond_150

    .line 3279
    goto :goto_13d

    .line 3281
    :cond_150
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 3282
    .restart local v13    # "pkgName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3283
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3285
    iget-object v14, v1, Lcom/android/server/pm/ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iget-object v15, v1, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 3286
    invoke-virtual {v15, v13}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v15

    .line 3285
    invoke-virtual {v14, v0, v7, v6, v15}, Lcom/android/server/pm/PackageDexOptimizer;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V

    .line 3287
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3288
    .end local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "pkgName":Ljava/lang/String;
    goto :goto_13d

    .line 3289
    :cond_17e
    const-string v3, "BgDexopt state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3290
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3291
    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/BackgroundDexOptService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3292
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3293
    move-object/from16 v4, p2

    goto/16 :goto_2d1

    .line 3340
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :sswitch_192
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 3341
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3343
    :cond_19b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v2, 0x78

    invoke-direct {v0, v8, v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3344
    .restart local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3345
    const-string v2, "Frozen packages:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3346
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3347
    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_1bb

    .line 3348
    const-string v2, "(none)"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e6

    .line 3350
    :cond_1bb
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1bc
    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e6

    .line 3351
    const-string/jumbo v3, "package="

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3352
    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3353
    const-string v3, ", refCounts="

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3354
    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3350
    add-int/lit8 v2, v2, 0x1

    goto :goto_1bc

    .line 3357
    .end local v2    # "i":I
    :cond_1e6
    :goto_1e6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-object/from16 v4, p2

    goto/16 :goto_2d1

    .line 3229
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :sswitch_1ed
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, v8}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v0

    .line 3231
    .local v2, "writer":Landroid/util/IndentingPrintWriter;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_1fc

    .line 3232
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3234
    :cond_1fc
    const-string v0, "Domain verification status:"

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3237
    :try_start_204
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 v3, -0x1

    .line 3238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3237
    invoke-interface {v0, v1, v2, v10, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_20e} :catch_20f

    .line 3242
    goto :goto_21a

    .line 3239
    :catch_20f
    move-exception v0

    .line 3240
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failure printing domain verification information"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    const-string v4, "PackageManager"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21a
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3244
    move-object/from16 v4, p2

    goto/16 :goto_2d1

    .line 3177
    .end local v2    # "writer":Landroid/util/IndentingPrintWriter;
    :sswitch_221
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_22a

    .line 3178
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3180
    :cond_22a
    const-string v0, "Database versions:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3182
    move-object/from16 v4, p2

    goto/16 :goto_2d1

    .line 3195
    :sswitch_23d
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->flush()V

    .line 3196
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3197
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3198
    .local v5, "str":Ljava/io/BufferedOutputStream;
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v6

    .line 3200
    .local v6, "serializer":Landroid/util/TypedXmlSerializer;
    :try_start_250
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3201
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v6, v0, v13}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3202
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v0, v7}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3204
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    const/4 v7, 0x0

    .line 3205
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->isFullPreferred()Z

    move-result v13

    .line 3204
    invoke-virtual {v0, v6, v7, v13}, Lcom/android/server/pm/ComputerEngine$Settings;->writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V

    .line 3206
    invoke-interface {v6}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 3207
    invoke-interface {v6}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_276
    .catch Ljava/lang/IllegalArgumentException; {:try_start_250 .. :try_end_276} :catch_2a3
    .catch Ljava/lang/IllegalStateException; {:try_start_250 .. :try_end_276} :catch_28d
    .catch Ljava/io/IOException; {:try_start_250 .. :try_end_276} :catch_277

    goto :goto_2b8

    .line 3212
    :catch_277
    move-exception v0

    .line 3213
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3215
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2d1

    .line 3210
    :catch_28d
    move-exception v0

    .line 3211
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_2b8

    .line 3208
    :catch_2a3
    move-exception v0

    .line 3209
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2b8
    goto :goto_2d1

    .line 3190
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "str":Ljava/io/BufferedOutputStream;
    .end local v6    # "serializer":Landroid/util/TypedXmlSerializer;
    :sswitch_2b9
    move-object/from16 v4, p2

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 3191
    goto :goto_2d1

    .line 3333
    :sswitch_2c1
    move-object/from16 v4, p2

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 3334
    goto :goto_2d1

    .line 3186
    :sswitch_2c9
    move-object/from16 v4, p2

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, v8, v9}, Lcom/android/server/pm/SharedLibrariesRead;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 3187
    nop

    .line 3360
    :goto_2d1
    return-void

    :sswitch_data_2d2
    .sparse-switch
        0x1 -> :sswitch_2c9
        0x200 -> :sswitch_2c1
        0x1000 -> :sswitch_2b9
        0x2000 -> :sswitch_23d
        0x8000 -> :sswitch_221
        0x40000 -> :sswitch_1ed
        0x80000 -> :sswitch_192
        0x100000 -> :sswitch_c3
        0x200000 -> :sswitch_4d
        0x4000000 -> :sswitch_29
    .end sparse-switch
.end method

.method public dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5939
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    .line 5940
    return-void
.end method

.method public dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 5933
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 5934
    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5956
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 5957
    return-void
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 5926
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    .line 5927
    return-void
.end method

.method public dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5961
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 5962
    return-void
.end method

.method public dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 5946
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 5947
    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5951
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 5952
    return-void
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 2978
    if-ltz p2, :cond_4a

    .line 2981
    if-eqz p4, :cond_10

    .line 2982
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2983
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 2982
    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2986
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2987
    .local v0, "callingUserId":I
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2989
    return-void

    .line 2991
    :cond_21
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/ComputerEngine;->isSameProfileGroup(II)Z

    move-result v1

    .line 2992
    .local v1, "isSameProfileGroup":Z
    if-eqz v1, :cond_3b

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    .line 2997
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2992
    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v2, v5, v3, p1, v4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3b

    .line 2999
    return-void

    .line 3001
    :cond_3b
    invoke-static {p1, p2, p5, p3, v1}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 3003
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2979
    .end local v0    # "callingUserId":I
    .end local v1    # "isSameProfileGroup":Z
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 13
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 3042
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 3044
    return-void
.end method

.method public final enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 3060
    if-ltz p2, :cond_30

    .line 3063
    if-eqz p4, :cond_10

    .line 3064
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 3065
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 3064
    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 3068
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3069
    .local v0, "callingUserId":I
    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3072
    return-void

    .line 3074
    :cond_21
    invoke-static {p1, p2, p6, p3}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3076
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3061
    .end local v0    # "callingUserId":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public filterAppAccess(II)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "callingUid"    # I

    .line 3136
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 3138
    if-ne p2, p1, :cond_a

    .line 3139
    return v1

    .line 3141
    :cond_a
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v0

    .line 3143
    .local v0, "clientAppUid":I
    if-ne v0, p1, :cond_11

    .line 3144
    return v1

    .line 3147
    :cond_11
    const/4 v1, 0x1

    return v1

    .line 3149
    .end local v0    # "clientAppUid":I
    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3150
    .local v0, "userId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3151
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 3153
    .local v3, "setting":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_2d

    .line 3154
    move-object v1, v3

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v1

    return v1

    .line 3156
    :cond_2d
    if-eqz v3, :cond_35

    instance-of v4, v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v4, :cond_34

    goto :goto_35

    .line 3161
    :cond_34
    return v1

    .line 3158
    :cond_35
    :goto_35
    move-object v1, v3

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    return v1
.end method

.method public filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 3124
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3125
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    return v1
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 3130
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3131
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    return v1
.end method

.method protected filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;JLjava/util/List;Lcom/android/server/pm/CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "matchFlags"    # J
    .param p5, "xpDomainInfo"    # Lcom/android/server/pm/CrossProfileDomainInfo;
    .param p6, "userId"    # I
    .param p7, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1043
    .local p4, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .local v6, "matchAllList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v7, "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-direct {v0, v4}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v8

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    goto :goto_28

    :cond_27
    const/4 v8, 0x0

    .line 1055
    .local v8, "blockInstant":Z
    :goto_28
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v5}, Lcom/android/server/pm/PackageManagerServiceStub;->exemptApplink(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 1056
    return-object v5

    .line 1060
    :cond_33
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    .line 1062
    .local v9, "count":I
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_38
    if-ge v10, v9, :cond_61

    .line 1063
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1064
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_53

    iget-boolean v12, v11, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-nez v12, :cond_5e

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v13, 0x3e8

    .line 1065
    invoke-virtual {v0, v12, v4, v13}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 1067
    goto :goto_5e

    .line 1071
    :cond_53
    iget-boolean v12, v11, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v12, :cond_5b

    .line 1072
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1074
    :cond_5b
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    .end local v11    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5e
    :goto_5e
    add-int/lit8 v10, v10, 0x1

    goto :goto_38

    .line 1079
    .end local v10    # "n":I
    :cond_61
    const/4 v10, 0x0

    .line 1081
    .local v10, "includeBrowser":Z
    invoke-static/range {p1 .. p3}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;J)Z

    move-result v11

    if-nez v11, :cond_78

    .line 1082
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1084
    if-eqz v3, :cond_76

    iget v11, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-lez v11, :cond_76

    .line 1086
    iget-object v11, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    :cond_76
    const/4 v10, 0x1

    goto :goto_b5

    .line 1090
    :cond_78
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v12, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1092
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;

    invoke-direct {v13, v12}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 1091
    invoke-interface {v11, v1, v7, v4, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;

    move-result-object v11

    .line 1093
    .local v11, "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .line 1094
    .local v12, "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    .line 1097
    .local v13, "highestApproval":Ljava/lang/Integer;
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a3

    .line 1098
    const/4 v10, 0x1

    .line 1099
    if-eqz v3, :cond_b5

    iget v14, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-lez v14, :cond_b5

    .line 1101
    iget-object v14, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 1104
    :cond_a3
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1107
    if-eqz v3, :cond_b5

    iget v14, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1108
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v14, v15, :cond_b5

    .line 1109
    iget-object v14, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    .end local v11    # "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    .end local v12    # "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "highestApproval":Ljava/lang/Integer;
    :cond_b5
    :goto_b5
    if-eqz v10, :cond_15c

    .line 1116
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    const-string v12, "PackageManager"

    if-eqz v11, :cond_c2

    .line 1117
    const-string v11, "   ...including browsers in candidate set"

    invoke-static {v12, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_c2
    const-wide/32 v13, 0x20000

    and-long v13, p2, v13

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_d2

    .line 1120
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_153

    .line 1124
    :cond_d2
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v11, v4}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v11

    .line 1126
    .local v11, "defaultBrowserPackageName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1127
    .local v13, "maxMatchPrio":I
    const/4 v14, 0x0

    .line 1128
    .local v14, "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1129
    .local v15, "numCandidates":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "n":I
    :goto_e2
    if-ge v0, v15, :cond_128

    .line 1130
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1132
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget v3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v3, v13, :cond_f3

    .line 1133
    iget v3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    move v13, v3

    .line 1136
    :cond_f3
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 1137
    if-eqz v14, :cond_105

    iget v3, v14, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v3, v4, :cond_11f

    .line 1139
    :cond_105
    if-eqz p7, :cond_11d

    .line 1140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Considering default browser match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_11d
    move-object v3, v1

    move-object v14, v3

    .line 1129
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_11f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p6

    goto :goto_e2

    .line 1146
    .end local v0    # "n":I
    :cond_128
    if-eqz v14, :cond_150

    iget v0, v14, Landroid/content/pm/ResolveInfo;->priority:I

    if-lt v0, v13, :cond_150

    .line 1148
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    .line 1149
    if-eqz p7, :cond_14c

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default browser match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_14c
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 1154
    :cond_150
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1159
    .end local v11    # "defaultBrowserPackageName":Ljava/lang/String;
    .end local v13    # "maxMatchPrio":I
    .end local v14    # "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    .end local v15    # "numCandidates":I
    :goto_153
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15c

    .line 1160
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1163
    :cond_15c
    return-object v5
.end method

.method public varargs filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .line 5759
    if-nez p1, :cond_b

    .line 5760
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 5763
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5765
    .local v0, "systemPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_5d

    aget-object v4, p1, v3

    .line 5766
    .local v4, "pkgName":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 5767
    goto :goto_5a

    .line 5770
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 5771
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v6, "PackageManager"

    if-nez v5, :cond_3a

    .line 5772
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    goto :goto_5a

    .line 5776
    :cond_3a
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    if-nez v7, :cond_57

    .line 5777
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not system"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    goto :goto_5a

    .line 5781
    :cond_57
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5765
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 5784
    :cond_5d
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public final filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 7
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # J

    .line 2438
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p6, "debug"    # Z
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 3604
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v6, p0

    move/from16 v7, p7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    .line 3605
    .local v8, "n":I
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3606
    invoke-virtual {v0, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v9

    .line 3608
    .local v9, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v10, "PackageManager"

    if-nez v0, :cond_16

    if-eqz p6, :cond_1b

    .line 3609
    :cond_16
    const-string v0, "Looking for persistent preferred activities..."

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    :cond_1b
    const/4 v11, 0x0

    if-eqz v9, :cond_3b

    .line 3612
    const-wide/32 v0, 0x10000

    and-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    move v4, v0

    goto :goto_2d

    :cond_2c
    move v4, v11

    :goto_2d
    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_3c

    .line 3615
    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    nop

    .line 3616
    .local v0, "pprefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    if-eqz v0, :cond_122

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_122

    .line 3617
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3618
    .local v1, "m":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    if-ge v2, v1, :cond_11f

    .line 3619
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 3620
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v5, "  "

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-nez v4, :cond_5c

    if-eqz p6, :cond_93

    .line 3621
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking PersistentPreferredActivity ds="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3622
    invoke-virtual {v3}, Lcom/android/server/pm/PersistentPreferredActivity;->countDataSchemes()I

    move-result v15

    if-lez v15, :cond_72

    invoke-virtual {v3, v11}, Lcom/android/server/pm/PersistentPreferredActivity;->getDataScheme(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_74

    :cond_72
    const-string v15, "<none>"

    :goto_74
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, "\n  component="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v15, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3621
    invoke-static {v10, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    new-instance v4, Landroid/util/LogPrinter;

    invoke-direct {v4, v14, v10, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PersistentPreferredActivity;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3626
    :cond_93
    iget-object v4, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v15, 0x200

    or-long v11, p3, v15

    invoke-virtual {v6, v4, v11, v12, v7}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 3628
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v11, :cond_a3

    if-eqz p6, :cond_b8

    .line 3629
    :cond_a3
    const-string v11, "Found persistent preferred activity:"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    if-eqz v4, :cond_b3

    .line 3631
    new-instance v11, Landroid/util/LogPrinter;

    invoke-direct {v11, v14, v10, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v11, v5}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_b8

    .line 3633
    :cond_b3
    const-string v5, "  null"

    invoke-static {v10, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :cond_b8
    :goto_b8
    if-nez v4, :cond_bd

    .line 3639
    move-object/from16 v11, p5

    goto :goto_11a

    .line 3641
    :cond_bd
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_be
    if-ge v5, v8, :cond_118

    .line 3642
    move-object/from16 v11, p5

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 3643
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3644
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d9

    .line 3645
    goto :goto_e6

    .line 3647
    :cond_d9
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e9

    .line 3648
    nop

    .line 3641
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_e6
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 3651
    .restart local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_e9
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v13, :cond_ef

    if-eqz p6, :cond_117

    .line 3652
    :cond_ef
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Returning persistent preferred activity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    :cond_117
    return-object v12

    .line 3641
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_118
    move-object/from16 v11, p5

    .line 3618
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "j":I
    :goto_11a
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto/16 :goto_4a

    :cond_11f
    move-object/from16 v11, p5

    goto :goto_124

    .line 3616
    .end local v1    # "m":I
    .end local v2    # "i":I
    :cond_122
    move-object/from16 v11, p5

    .line 3659
    :goto_124
    const/4 v1, 0x0

    return-object v1
.end method

.method protected findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 43
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p6, "always"    # Z
    .param p7, "removeMatches"    # Z
    .param p8, "debug"    # Z
    .param p9, "userId"    # I
    .param p10, "queryMayBeFiltered"    # Z
    .param p11, "callingUid"    # I
    .param p12, "isDeviceProvisioned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZIZ)",
            "Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;"
        }
    .end annotation

    .line 3369
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move/from16 v11, p9

    new-instance v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;-><init>()V

    move-object v12, v0

    .line 3371
    .local v12, "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    nop

    .line 3373
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v6

    .line 3371
    const/4 v5, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p9

    move/from16 v4, p11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v13

    .line 3375
    .end local p3    # "flags":J
    .local v13, "flags":J
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v15

    .line 3378
    .end local p1    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    move-object v1, v15

    move-object/from16 v2, p2

    move-wide v3, v13

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3382
    iget-object v0, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_41

    .line 3383
    return-object v12

    .line 3386
    :cond_41
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v6

    .line 3388
    .local v6, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v7, "PackageManager"

    if-nez v0, :cond_4f

    if-eqz p8, :cond_54

    :cond_4f
    const-string v0, "Looking for preferred activities..."

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    :cond_54
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v6, :cond_7b

    .line 3390
    const-wide/32 v0, 0x10000

    and-long/2addr v0, v13

    const-wide/16 v16, 0x0

    cmp-long v0, v0, v16

    if-eqz v0, :cond_66

    move/from16 v16, v3

    goto :goto_68

    :cond_66
    move/from16 v16, v4

    :goto_68
    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v15

    move-wide/from16 p3, v13

    move v13, v3

    .end local v13    # "flags":J
    .restart local p3    # "flags":J
    move-object/from16 v3, p2

    move v14, v4

    move/from16 v4, v16

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PreferredIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5

    goto :goto_80

    .line 3393
    .end local p3    # "flags":J
    .restart local v13    # "flags":J
    :cond_7b
    move-wide/from16 p3, v13

    move v13, v3

    move v14, v4

    .end local v13    # "flags":J
    .restart local p3    # "flags":J
    const/4 v5, 0x0

    :goto_80
    move-object v0, v5

    .line 3394
    .local v0, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz v0, :cond_411

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_411

    .line 3399
    const/4 v1, 0x0

    .line 3401
    .local v1, "match":I
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v2, :cond_90

    if-eqz p8, :cond_95

    .line 3402
    :cond_90
    const-string v2, "Figuring out best match..."

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    :cond_95
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    .line 3406
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_9a
    if-ge v3, v2, :cond_da

    .line 3407
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 3408
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v5, :cond_a8

    if-eqz p8, :cond_d0

    .line 3409
    :cond_a8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Match for "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": 0x"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 3410
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3409
    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :cond_d0
    iget v5, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v1, :cond_d6

    .line 3413
    iget v1, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 3406
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_d6
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x1

    goto :goto_9a

    .line 3417
    .end local v3    # "j":I
    :cond_da
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v3, :cond_e0

    if-eqz p8, :cond_fa

    .line 3418
    :cond_e0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Best match: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    :cond_fa
    const/high16 v3, 0xfff0000

    and-int/2addr v1, v3

    .line 3421
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3422
    .local v3, "m":I
    const/4 v4, 0x0

    move-wide/from16 v18, p3

    .end local p3    # "flags":J
    .local v4, "i":I
    .local v18, "flags":J
    :goto_104
    if-ge v4, v3, :cond_404

    .line 3423
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredActivity;

    .line 3424
    .local v5, "pa":Lcom/android/server/pm/PreferredActivity;
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v14, "  "

    move-object/from16 p1, v0

    .end local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-nez v13, :cond_11a

    if-eqz p8, :cond_117

    goto :goto_11a

    :cond_117
    move/from16 v26, v3

    goto :goto_15a

    .line 3425
    :cond_11a
    :goto_11a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Checking PreferredActivity ds="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3426
    invoke-virtual {v5}, Lcom/android/server/pm/PreferredActivity;->countDataSchemes()I

    move-result v13

    if-lez v13, :cond_131

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/server/pm/PreferredActivity;->getDataScheme(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_133

    :cond_131
    const-string v20, "<none>"

    :goto_133
    move-object/from16 v13, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "\n  component="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v13, v13, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3425
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    new-instance v0, Landroid/util/LogPrinter;

    move/from16 v26, v3

    const/4 v3, 0x2

    const/4 v13, 0x3

    .end local v3    # "m":I
    .local v26, "m":I
    invoke-direct {v0, v3, v7, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v5, v0, v14}, Lcom/android/server/pm/PreferredActivity;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3430
    :goto_15a
    iget-object v0, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v0, v0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eq v0, v1, :cond_185

    .line 3431
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_166

    if-eqz p8, :cond_198

    .line 3432
    :cond_166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping bad match "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v3, v3, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3433
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3432
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_198

    .line 3439
    :cond_185
    if-eqz p6, :cond_1a3

    iget-object v0, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v0, v0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v0, :cond_1a3

    .line 3440
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_193

    if-eqz p8, :cond_198

    :cond_193
    const-string v0, "Skipping mAlways=false entry"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    .end local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_198
    :goto_198
    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 p3, v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f7

    .line 3445
    .restart local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_1a3
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 3446
    const-wide/32 v20, 0x402000

    or-long v18, v18, v20

    .line 3449
    :cond_1b2
    iget-object v0, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v20, 0x200

    or-long v20, v18, v20

    const-wide/32 v22, 0x80000

    or-long v20, v20, v22

    const-wide/32 v22, 0x40000

    move v13, v4

    .end local v4    # "i":I
    .local v13, "i":I
    or-long v3, v20, v22

    invoke-virtual {v8, v0, v3, v4, v11}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3453
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v3, :cond_1d3

    if-eqz p8, :cond_1d0

    goto :goto_1d3

    :cond_1d0
    move/from16 v27, v1

    goto :goto_1ee

    .line 3454
    :cond_1d3
    :goto_1d3
    const-string v3, "Found preferred activity:"

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    if-eqz v0, :cond_1e7

    .line 3456
    new-instance v3, Landroid/util/LogPrinter;

    move/from16 v27, v1

    const/4 v1, 0x2

    const/4 v4, 0x3

    .end local v1    # "match":I
    .local v27, "match":I
    invoke-direct {v3, v1, v7, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v3, v14}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1ee

    .line 3458
    .end local v27    # "match":I
    .restart local v1    # "match":I
    :cond_1e7
    move/from16 v27, v1

    .end local v1    # "match":I
    .restart local v27    # "match":I
    const-string v1, "  null"

    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    :goto_1ee
    invoke-static {v15}, Lcom/android/server/pm/ComputerEngine;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    if-nez p12, :cond_1f8

    const/4 v4, 0x1

    goto :goto_1f9

    :cond_1f8
    const/4 v4, 0x0

    :goto_1f9
    move v1, v4

    .line 3463
    .local v1, "excludeSetupWizardHomeActivity":Z
    if-nez v1, :cond_200

    if-nez p10, :cond_200

    const/4 v4, 0x1

    goto :goto_201

    :cond_200
    const/4 v4, 0x0

    :goto_201
    move v3, v4

    .line 3465
    .local v3, "allowSetMutation":Z
    if-nez v0, :cond_238

    .line 3468
    if-nez v3, :cond_20f

    .line 3469
    move/from16 v28, v2

    move/from16 p3, v13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f7

    .line 3477
    :cond_20f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removing dangling preferred activity: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v14, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v14, v14, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3480
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3481
    move/from16 v28, v2

    move/from16 p3, v13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f7

    .line 3483
    :cond_238
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_239
    if-ge v4, v2, :cond_3ec

    .line 3484
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 3485
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    move/from16 v28, v2

    .end local v2    # "n":I
    .local v28, "n":I
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 p3, v13

    .end local v13    # "i":I
    .local p3, "i":I
    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3486
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_256

    .line 3487
    goto :goto_263

    .line 3489
    :cond_256
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26a

    .line 3490
    nop

    .line 3483
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_263
    add-int/lit8 v4, v4, 0x1

    move/from16 v13, p3

    move/from16 v2, v28

    goto :goto_239

    .line 3493
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_26a
    if-eqz p7, :cond_29c

    if-eqz v3, :cond_29c

    .line 3494
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3495
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3496
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_297

    .line 3497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing match "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v13, v13, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f7

    .line 3496
    :cond_297
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f7

    .line 3508
    :cond_29c
    if-eqz p6, :cond_3b7

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3509
    invoke-virtual {v2, v10, v1, v11}, Lcom/android/server/pm/PreferredComponent;->sameSet(Ljava/util/List;ZI)Z

    move-result v2

    if-nez v2, :cond_3b2

    .line 3510
    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v2, v10, v1}, Lcom/android/server/pm/PreferredComponent;->isSuperset(Ljava/util/List;Z)Z

    move-result v2

    const-string v13, " type "

    if-eqz v2, :cond_316

    .line 3511
    if-eqz v3, :cond_307

    .line 3514
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_2d7

    .line 3515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p4, v0

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local p4, "ai":Landroid/content/pm/ActivityInfo;
    const-string v0, "Result set changed, but PreferredActivity is still valid as only non-preferred components were removed for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d9

    .line 3514
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2d7
    move-object/from16 p4, v0

    .line 3522
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_2d9
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v2, v2, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3524
    invoke-virtual {v13, v10}, Lcom/android/server/pm/PreferredComponent;->discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;

    move-result-object v23

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v13, v13, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move/from16 v29, v1

    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .local v29, "excludeSetupWizardHomeActivity":Z
    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v1, v1, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move/from16 v22, v2

    move-object/from16 v24, v13

    move/from16 v25, v1

    invoke-direct/range {v20 .. v25}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3527
    .local v0, "freshPa":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3528
    invoke-virtual {v6, v8, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3529
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3530
    .end local v0    # "freshPa":Lcom/android/server/pm/PreferredActivity;
    goto/16 :goto_3bb

    .line 3531
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_307
    move-object/from16 p4, v0

    move/from16 v29, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_3bb

    .line 3532
    const-string v0, "Do not remove preferred activity"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3bb

    .line 3536
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_316
    move-object/from16 p4, v0

    move/from16 v29, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_3ae

    .line 3537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result set changed, dropping preferred activity for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_358

    .line 3542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing preferred activity since set changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v1, v1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    :cond_358
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3548
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v1, v1, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    const/16 v23, 0x0

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v2, v2, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move/from16 v22, v1

    move-object/from16 v24, v2

    invoke-direct/range {v20 .. v25}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3551
    .local v0, "lastChosen":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v6, v8, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3552
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preferred:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v2, v2, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 3555
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", while query:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/ResolveInfo;

    .line 3557
    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3554
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    .end local v0    # "lastChosen":Lcom/android/server/pm/PreferredActivity;
    :cond_3ae
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3561
    return-object v12

    .line 3509
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_3b2
    move-object/from16 p4, v0

    move/from16 v29, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_3bb

    .line 3508
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_3b7
    move-object/from16 p4, v0

    move/from16 v29, v1

    .line 3566
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_3bb
    :goto_3bb
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_3c1

    if-eqz p8, :cond_3e9

    .line 3567
    :cond_3c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning preferred activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    :cond_3e9
    iput-object v14, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3571
    return-object v12

    .line 3483
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v28    # "n":I
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p3    # "i":I
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v2    # "n":I
    .restart local v13    # "i":I
    :cond_3ec
    move-object/from16 p4, v0

    move/from16 v29, v1

    move/from16 v28, v2

    move/from16 p3, v13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3422
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .end local v2    # "n":I
    .end local v3    # "allowSetMutation":Z
    .end local v4    # "j":I
    .end local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v13    # "i":I
    .restart local v28    # "n":I
    .restart local p3    # "i":I
    :goto_3f7
    add-int/lit8 v4, p3, 0x1

    move-object/from16 v0, p1

    move v14, v2

    move/from16 v3, v26

    move/from16 v1, v27

    move/from16 v2, v28

    .end local p3    # "i":I
    .local v4, "i":I
    goto/16 :goto_104

    .end local v26    # "m":I
    .end local v27    # "match":I
    .end local v28    # "n":I
    .end local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local v0, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local v1, "match":I
    .restart local v2    # "n":I
    .local v3, "m":I
    :cond_404
    move-object/from16 p1, v0

    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v26, v3

    move/from16 p3, v4

    .end local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v1    # "match":I
    .end local v2    # "n":I
    .end local v3    # "m":I
    .end local v4    # "i":I
    .restart local v26    # "m":I
    .restart local v27    # "match":I
    .restart local v28    # "n":I
    .restart local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local p3    # "i":I
    move-wide/from16 v13, v18

    goto :goto_415

    .line 3394
    .end local v18    # "flags":J
    .end local v26    # "m":I
    .end local v27    # "match":I
    .end local v28    # "n":I
    .end local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local p3, "flags":J
    :cond_411
    move-object/from16 p1, v0

    .line 3575
    .end local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    move-wide/from16 v13, p3

    .end local p3    # "flags":J
    .local v13, "flags":J
    :goto_415
    return-object v12
.end method

.method public final findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p6, "always"    # Z
    .param p7, "removeMatches"    # Z
    .param p8, "debug"    # Z
    .param p9, "userId"    # I
    .param p10, "queryMayBeFiltered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZ)",
            "Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;"
        }
    .end annotation

    .line 3589
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 3592
    .local v13, "callingUid":I
    move-object v14, p0

    iget-object v0, v14, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3593
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move v12, v1

    goto :goto_18

    :cond_17
    move v12, v2

    .line 3596
    .local v12, "isDeviceProvisioned":Z
    :goto_18
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move v11, v13

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v0

    return-object v0
.end method

.method public findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;
    .registers 8
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 5033
    invoke-static {p1}, Lcom/android/server/pm/SharedLibraryUtils;->findSharedLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object v0

    .line 5034
    .local v0, "deps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 5035
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5036
    .local v1, "retValue":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    .line 5037
    .local v3, "info":Landroid/content/pm/SharedLibraryInfo;
    nop

    .line 5038
    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 5039
    .local v4, "depPackageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_33

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 5040
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5042
    .end local v3    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v4    # "depPackageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_33
    goto :goto_13

    .line 5043
    :cond_34
    return-object v1

    .line 5045
    .end local v1    # "retValue":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 931
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 932
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 933
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_51

    .line 934
    move-object v2, p0

    move-object v3, v0

    move v4, p4

    move v5, p5

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 935
    return-object v1

    .line 937
    :cond_1e
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 938
    return-object v1

    .line 940
    :cond_25
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;

    move-result-object v2

    if-nez v2, :cond_35

    .line 941
    invoke-virtual {p0, v0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 942
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_34

    .line 943
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    .line 945
    :cond_34
    return-object v1

    .line 947
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_35
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 948
    invoke-interface {v0, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 947
    move-wide v3, p2

    move v6, p5

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 949
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_50

    .line 950
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 952
    :cond_50
    return-object v1

    .line 954
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_51
    return-object v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
    .registers 24
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1619
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_10

    return-object v15

    .line 1620
    :cond_10
    if-nez v13, :cond_13

    .line 1621
    return-object v15

    .line 1623
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1630
    .local v12, "callingUid":I
    invoke-virtual {v0, v13, v12, v14}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1631
    return-object v15

    .line 1634
    :cond_1e
    const-wide/16 v1, 0x2000

    and-long v3, p2, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_35

    .line 1635
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1636
    const-wide/32 v3, 0x400000

    or-long v3, p2, v3

    move-wide v10, v3

    .end local p2    # "flags":J
    .local v3, "flags":J
    goto :goto_37

    .line 1639
    .end local v3    # "flags":J
    .restart local p2    # "flags":J
    :cond_35
    move-wide/from16 v10, p2

    .end local p2    # "flags":J
    .local v10, "flags":J
    :goto_37
    invoke-interface {v13, v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    .line 1640
    .local v7, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    .line 1641
    .local v8, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v8, :cond_ae

    .line 1643
    const-wide/16 v1, 0x100

    and-long/2addr v1, v10

    cmp-long v1, v1, v5

    if-nez v1, :cond_4c

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    move-object v2, v1

    goto :goto_5b

    .line 1644
    :cond_4c
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-static {v14, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v1

    move-object v2, v1

    :goto_5b
    nop

    .line 1646
    .local v2, "gids":[I
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v10

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7a

    .line 1647
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_7a

    .line 1648
    :cond_6e
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v1

    move-object v9, v1

    goto :goto_7f

    .line 1647
    :cond_7a
    :goto_7a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v9, v1

    .line 1648
    :goto_7f
    nop

    .line 1650
    .local v9, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 1651
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastUpdateTime()J

    move-result-wide v16

    .line 1650
    move-object v1, v8

    move-wide v3, v10

    move-object/from16 p2, v7

    move-object/from16 v18, v8

    .end local v7    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v8    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v18, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local p2, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    move-wide/from16 v7, v16

    move-wide v13, v10

    .end local v10    # "flags":J
    .local v13, "flags":J
    move-object/from16 v10, p2

    move/from16 v11, p4

    move/from16 v16, v12

    .end local v12    # "callingUid":I
    .local v16, "callingUid":I
    move-object/from16 v12, p1

    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1654
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_a1

    .line 1655
    return-object v15

    .line 1658
    :cond_a1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1659
    move-object/from16 v4, v18

    .end local v18    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v4, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1661
    return-object v1

    .line 1662
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "gids":[I
    .end local v4    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v9    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "flags":J
    .end local v16    # "callingUid":I
    .end local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v7    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v8    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v10    # "flags":J
    .restart local v12    # "callingUid":I
    :cond_ae
    move-object/from16 p2, v7

    move-object v4, v8

    move-wide v13, v10

    move/from16 v16, v12

    .end local v7    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v8    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v10    # "flags":J
    .end local v12    # "callingUid":I
    .restart local v4    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v13    # "flags":J
    .restart local v16    # "callingUid":I
    .restart local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    and-long/2addr v1, v13

    cmp-long v1, v1, v5

    if-eqz v1, :cond_158

    .line 1663
    move-object/from16 v1, p2

    .end local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .local v1, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-static {v1, v13, v14}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 1664
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1665
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1666
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    .line 1667
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v3

    .line 1668
    .local v3, "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    if-eqz v3, :cond_e1

    invoke-interface {v3}, Lcom/android/server/pm/pkg/SharedUserApi;->getName()Ljava/lang/String;

    move-result-object v15

    :cond_e1
    iput-object v15, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 1669
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1670
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastUpdateTime()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1672
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1673
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1674
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v6

    move/from16 v7, p4

    move-wide v8, v13

    .end local v13    # "flags":J
    .local v8, "flags":J
    invoke-static {v7, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1675
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1676
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1677
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1678
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1679
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrivateFlags()I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1680
    invoke-static {v5, v8, v9, v1, v7}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iput-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1683
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v6, :cond_153

    .line 1684
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ps.pkg is n/a for ["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1685
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "]. Provides a minimum info."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1684
    const-string v10, "PackageManager"

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_153
    return-object v2

    .line 1663
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "flags":J
    .restart local v13    # "flags":J
    :cond_154
    move/from16 v7, p4

    move-wide v8, v13

    .end local v13    # "flags":J
    .restart local v8    # "flags":J
    goto :goto_15d

    .line 1662
    .end local v1    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v8    # "flags":J
    .restart local v13    # "flags":J
    .restart local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_158
    move-object/from16 v1, p2

    move/from16 v7, p4

    move-wide v8, v13

    .line 1689
    .end local v13    # "flags":J
    .end local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v1    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v8    # "flags":J
    :goto_15d
    return-object v15
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 866
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 877
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 878
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 880
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 881
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get activity info"

    move-object v1, p0

    move v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 886
    :cond_25
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 23
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 891
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p5

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v14

    .line 893
    .local v14, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActivityInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_32
    const/4 v8, 0x0

    if-nez v14, :cond_37

    move-object v0, v8

    goto :goto_43

    :cond_37
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    :goto_43
    move-object/from16 v16, v0

    .line 896
    .local v16, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v16, :cond_88

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v1, v16

    move-object v2, v14

    move-wide/from16 v3, p2

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 897
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 898
    .local v13, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v13, :cond_63

    return-object v8

    .line 899
    :cond_63
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p4

    move-object/from16 v3, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 901
    return-object v8

    .line 903
    :cond_74
    nop

    .line 904
    invoke-interface {v13, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    .line 903
    move-object/from16 v8, v16

    move-object v9, v14

    move-wide/from16 v10, p2

    move-object v0, v13

    .end local v13    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v13, p5

    move-object v1, v14

    .end local v14    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .local v1, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    move-object v14, v0

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    return-object v2

    .line 896
    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v1    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .restart local v14    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_88
    move-object v1, v14

    .line 906
    .end local v14    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .restart local v1    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->resolveComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 907
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    sget-object v2, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-wide/from16 v3, p2

    invoke-static {v0, v3, v4, v2, v15}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0

    .line 910
    :cond_9e
    move-wide/from16 v3, p2

    return-object v8
.end method

.method public getAllAvailablePackageNames()[Ljava/lang/String;
    .registers 3

    .line 1780
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 5103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5104
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 5106
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5107
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5108
    .local v1, "callingUserId":I
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5109
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 5110
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1f
    if-eqz v3, :cond_7a

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_7a

    .line 5113
    :cond_2c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 5114
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    return-object v4

    .line 5116
    :cond_37
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    .line 5117
    .local v4, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5118
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_45
    if-ge v6, v4, :cond_74

    .line 5119
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 5120
    .local v7, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v8

    .line 5121
    .local v8, "intentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_56
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_71

    .line 5122
    new-instance v10, Landroid/content/IntentFilter;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5121
    add-int/lit8 v9, v9, 0x1

    goto :goto_56

    .line 5118
    .end local v7    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v8    # "intentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    .end local v9    # "index":I
    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 5125
    .end local v6    # "n":I
    :cond_74
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v6

    .line 5111
    .end local v4    # "count":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    :cond_7a
    :goto_7a
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    return-object v4
.end method

.method public getAllPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x42f

    if-eq v0, v1, :cond_d

    .line 4452
    const-string v0, "getAllPackages is limited to privileged callers"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 4455
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4456
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4457
    .local v1, "callingUserId":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4458
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 4460
    :cond_27
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 4461
    .local v2, "instantAppPkgName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4462
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_58

    .line 4464
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4465
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVisibleToInstantApps()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 4466
    goto :goto_3c

    .line 4468
    :cond_4f
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4469
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_3c

    :cond_57
    goto :goto_9b

    .line 4472
    :cond_58
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4473
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 4474
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_93

    .line 4475
    invoke-interface {v6, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_93

    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4477
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    .line 4476
    invoke-virtual {v7, v1, v8, v9}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v7

    if-nez v7, :cond_93

    .line 4478
    goto :goto_62

    .line 4480
    :cond_93
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4481
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_62

    .line 4483
    :cond_9b
    :goto_9b
    return-object v3
.end method

.method public getAllSharedUsers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 5973
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 4660
    if-nez p1, :cond_5

    .line 4661
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 4663
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4664
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 4665
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 4667
    :cond_12
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4669
    .local v1, "callingUserId":I
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4670
    invoke-interface {v3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 4671
    .local v2, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_27
    if-ltz v3, :cond_42

    .line 4672
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4673
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 4675
    goto :goto_3f

    .line 4677
    :cond_3c
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 4671
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_3f
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    .line 4679
    .end local v3    # "i":I
    :cond_42
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5270
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    return v0

    .line 5271
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5272
    .local v0, "callingUid":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get enabled"

    move-object v1, p0

    move v2, v0

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5275
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5276
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5275
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 5279
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 5277
    :cond_2b
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v1
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_31} :catch_31

    .line 5280
    .restart local v0    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_31
    move-exception v1

    .line 5281
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5056
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5057
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5058
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationHidden for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v0

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5060
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5062
    .local v1, "callingId":J
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_50

    .line 5063
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v4, 0x1

    if-nez v3, :cond_39

    .line 5064
    nop

    .line 5071
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5064
    return v4

    .line 5066
    :cond_39
    :try_start_39
    invoke-virtual {p0, v3, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_50

    if-eqz v5, :cond_44

    .line 5067
    nop

    .line 5071
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5067
    return v4

    .line 5069
    :cond_44
    :try_start_44
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isHidden()Z

    move-result v4
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_50

    .line 5071
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5069
    return v4

    .line 5071
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_50
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5072
    throw v3
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 971
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 972
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide p2

    .line 974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 975
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get application info"

    move-object v1, p0

    move v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 980
    :cond_25
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 988
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 991
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 992
    .local v0, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v1, :cond_34

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_34
    const/4 v1, 0x0

    if-eqz v0, :cond_69

    .line 998
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    .line 999
    .local v9, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v9, :cond_40

    return-object v1

    .line 1000
    :cond_40
    move-object v3, p0

    move-object v4, v9

    move v5, p4

    move v6, p5

    move-wide v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1001
    return-object v1

    .line 1003
    :cond_4c
    invoke-virtual {p0, v9, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1004
    return-object v1

    .line 1007
    :cond_53
    nop

    .line 1008
    invoke-interface {v9, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 1007
    move-object v1, v0

    move-wide v2, p2

    move v5, p5

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1009
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_68

    .line 1010
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1012
    :cond_68
    return-object v1

    .line 1014
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_69
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_89

    .line 1019
    const/4 v2, 0x1

    .line 1020
    .local v2, "apexFlags":I
    const-wide/32 v6, 0x100000

    and-long/2addr v6, p2

    cmp-long v3, v6, v4

    if-eqz v3, :cond_7d

    .line 1021
    const/4 v2, 0x2

    .line 1023
    :cond_7d
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1024
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_86

    .line 1025
    return-object v1

    .line 1027
    :cond_86
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    .line 1029
    .end local v2    # "apexFlags":I
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_89
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    goto :goto_ae

    .line 1032
    :cond_9b
    const-wide/32 v2, 0x402000

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_ad

    .line 1034
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1

    .line 1037
    :cond_ad
    return-object v1

    .line 1030
    :cond_ae
    :goto_ae
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method public getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5640
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5641
    .local v0, "sharedUserIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5642
    .local v2, "setting":Lcom/android/server/pm/SharedUserSetting;
    iget v3, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object v4, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5643
    .end local v2    # "setting":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_f

    .line 5644
    :cond_27
    return-object v0
.end method

.method public getBlockUninstall(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5853
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBlockUninstallForUser(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5130
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5131
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1a

    .line 5134
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 5132
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    return v1
.end method

.method public getBroadcastAllowList(Ljava/lang/String;[IZ)Landroid/util/SparseArray;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "isInstantApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[IZ)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 5141
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 5142
    return-object v0

    .line 5144
    :cond_4
    const/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5145
    .local v1, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_d

    .line 5146
    return-object v0

    .line 5148
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;II)I
    .registers 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5289
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getComponentEnabled"

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5291
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result v0

    return v0
.end method

.method public getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5298
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 5299
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x2

    return v0

    .line 5302
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5303
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    const/4 v6, 0x0

    .line 5302
    move-object v2, p0

    move v4, p2

    move-object v5, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 5307
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v0

    return v0

    .line 5305
    :cond_2a
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    throw v0
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_34} :catch_34

    .line 5308
    .restart local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "callingUid":I
    .restart local p3    # "userId":I
    :catch_34
    move-exception v0

    .line 5309
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .registers 2

    .line 5888
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    return-object v0
.end method

.method public final getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "sourceUserId"    # I
    .param p6, "parentUserId"    # I

    .line 1248
    move-object/from16 v7, p0

    move/from16 v8, p5

    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string v1, "allow_parent_profile_app_linking"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_10

    .line 1250
    return-object v9

    .line 1252
    :cond_10
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 1255
    .local v0, "resultTargetUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_87

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    move/from16 v13, p6

    goto :goto_89

    .line 1258
    :cond_2b
    const/4 v1, 0x0

    .line 1259
    .local v1, "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1260
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v2, :cond_7d

    .line 1261
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1265
    .local v4, "riTargetUser":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, v4, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v5, :cond_40

    .line 1266
    move/from16 v13, p6

    goto :goto_7a

    .line 1268
    :cond_40
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1269
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 1270
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v6, :cond_4f

    .line 1271
    move/from16 v13, p6

    goto :goto_7a

    .line 1274
    :cond_4f
    iget-object v10, v7, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1275
    move-object v11, v6

    move-object/from16 v12, p1

    move-wide/from16 v13, p3

    move/from16 v15, p6

    invoke-interface/range {v10 .. v15}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v10

    .line 1277
    .local v10, "approvalLevel":I
    if-nez v1, :cond_70

    .line 1278
    new-instance v11, Lcom/android/server/pm/CrossProfileDomainInfo;

    new-instance v12, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v12}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move/from16 v13, p6

    invoke-virtual {v7, v12, v8, v13}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    move-object v1, v11

    goto :goto_7a

    .line 1281
    :cond_70
    move/from16 v13, p6

    iget v11, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1282
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1260
    .end local v4    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "approvalLevel":I
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_7d
    move/from16 v13, p6

    .line 1285
    .end local v3    # "i":I
    if-eqz v1, :cond_86

    iget v3, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-gtz v3, :cond_86

    .line 1287
    return-object v9

    .line 1289
    :cond_86
    return-object v1

    .line 1255
    .end local v1    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v2    # "size":I
    :cond_87
    move/from16 v13, p6

    .line 1256
    :goto_89
    return-object v9
.end method

.method public getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 42
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 4115
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_SHARED_LIBRARIES"

    const-string v2, "getDeclaredSharedLibraries"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 4118
    .local v12, "callingUid":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getDeclaredSharedLibraries"

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4121
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4122
    const-string/jumbo v0, "userId must be >= 0"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4123
    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_35

    .line 4124
    return-object v13

    .line 4127
    :cond_35
    invoke-virtual {v9, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 4128
    return-object v13

    .line 4131
    :cond_3c
    nop

    .line 4132
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v14

    .line 4133
    .local v14, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v0, 0x0

    .line 4135
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v14}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v15

    .line 4136
    .local v15, "libraryCount":I
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_48
    if-ge v8, v15, :cond_135

    .line 4137
    nop

    .line 4138
    invoke-virtual {v14, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 4139
    .local v7, "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v7, :cond_58

    .line 4140
    move/from16 v22, v8

    goto/16 :goto_131

    .line 4143
    :cond_58
    invoke-virtual {v7}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    .line 4144
    .local v5, "versionCount":I
    const/4 v1, 0x0

    move-object/from16 v16, v0

    move v6, v1

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v6, "j":I
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_60
    if-ge v6, v5, :cond_127

    .line 4145
    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    .line 4147
    .local v17, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v18

    .line 4148
    .local v18, "declaringPackage":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 4149
    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_10e

    .line 4152
    :cond_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4154
    .local v19, "identity":J
    nop

    .line 4155
    :try_start_87
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4156
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    const-wide/32 v0, 0x4000000

    or-long v21, p2, v0

    .line 4158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_11a

    .line 4154
    move-object/from16 v1, p0

    move/from16 v23, v5

    move/from16 v24, v6

    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    .local v23, "versionCount":I
    .local v24, "j":I
    move-wide/from16 v5, v21

    move-object/from16 v21, v7

    .end local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v21, "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    move v7, v0

    move/from16 v22, v8

    .end local v8    # "i":I
    .local v22, "i":I
    move/from16 v8, p4

    :try_start_a7
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_118

    .line 4159
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_b1

    .line 4163
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4160
    goto :goto_10e

    .line 4163
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_b1
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4164
    nop

    .line 4166
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    .line 4167
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 4168
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v28

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v29

    .line 4169
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v30

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v32

    .line 4170
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v33

    .line 4171
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-wide/from16 v3, p2

    move v5, v12

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v34

    .line 4173
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e9

    .line 4174
    move-object/from16 v35, v13

    goto :goto_f4

    :cond_e9
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v35, v1

    .line 4175
    :goto_f4
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v36

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v36}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 4177
    .local v0, "resultLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v16, :cond_107

    .line 4178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v1

    goto :goto_109

    .line 4177
    :cond_107
    move-object/from16 v1, v16

    .line 4180
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_109
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    .line 4144
    .end local v0    # "resultLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v19    # "identity":J
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_10e
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v5, v23

    .end local v24    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_60

    .line 4163
    .end local v6    # "j":I
    .restart local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v19    # "identity":J
    .restart local v24    # "j":I
    :catchall_118
    move-exception v0

    goto :goto_123

    .end local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v22    # "i":I
    .end local v23    # "versionCount":I
    .end local v24    # "j":I
    .restart local v5    # "versionCount":I
    .restart local v6    # "j":I
    .restart local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v8    # "i":I
    :catchall_11a
    move-exception v0

    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    .end local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v8    # "i":I
    .restart local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v22    # "i":I
    .restart local v23    # "versionCount":I
    .restart local v24    # "j":I
    :goto_123
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4164
    throw v0

    .line 4144
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v19    # "identity":J
    .end local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v22    # "i":I
    .end local v23    # "versionCount":I
    .end local v24    # "j":I
    .restart local v5    # "versionCount":I
    .restart local v6    # "j":I
    .restart local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v8    # "i":I
    :cond_127
    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    .end local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v8    # "i":I
    .restart local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v22    # "i":I
    .restart local v23    # "versionCount":I
    .restart local v24    # "j":I
    move-object/from16 v0, v16

    .line 4136
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v23    # "versionCount":I
    .end local v24    # "j":I
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_131
    add-int/lit8 v8, v22, 0x1

    .end local v22    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_48

    :cond_135
    move/from16 v22, v8

    .line 4184
    .end local v8    # "i":I
    if-eqz v0, :cond_13e

    new-instance v13, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v13, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :cond_13e
    return-object v13
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 10
    .param p1, "userId"    # I

    .line 1171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    .local v0, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 1173
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_c

    .line 1174
    return-object v1

    .line 1178
    :cond_c
    const-string v2, "PackageManager"

    const-string v3, "Default package for ROLE_HOME is not set in RoleManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/high16 v2, -0x80000000

    .line 1183
    .local v2, "lastPriority":I
    const/4 v3, 0x0

    .line 1184
    .local v3, "lastComponent":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1185
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    if-ge v5, v4, :cond_38

    .line 1186
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1187
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v2, :cond_30

    .line 1188
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1189
    iget v2, v6, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_35

    .line 1190
    :cond_30
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v7, v2, :cond_35

    .line 1192
    const/4 v3, 0x0

    .line 1185
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_35
    :goto_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1195
    .end local v5    # "i":I
    :cond_38
    return-object v3
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5894
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    return-object v0
.end method

.method public getFlagsForUid(I)I
    .registers 9
    .param p1, "uid"    # I

    .line 4574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4575
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4576
    return v2

    .line 4578
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4579
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4581
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4582
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4583
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4584
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_37

    .line 4585
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4586
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4587
    return v2

    .line 4589
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getFlags()I

    move-result v2

    return v2

    .line 4590
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_37
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_4a

    .line 4591
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4592
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 4593
    return v2

    .line 4595
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v2

    return v2

    .line 4597
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4a
    return v2
.end method

.method public getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5906
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method public getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 14
    .param p1, "recipientUid"    # I
    .param p2, "visibleAuthority"    # Ljava/lang/String;

    .line 4887
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4888
    .local v6, "callingUid":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4890
    .local v7, "recipientUserId":I
    nop

    .line 4891
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4890
    const-string v1, "com.android.contacts"

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 4892
    .local v8, "contactsProvider":Landroid/content/pm/ProviderInfo;
    if-eqz v8, :cond_3e

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3e

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4893
    invoke-static {v0, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4899
    .local v9, "token":J
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, v7

    move v5, v6

    :try_start_31
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_39

    .line 4902
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4899
    return-object v0

    .line 4902
    :catchall_39
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4903
    throw v0

    .line 4894
    .end local v9    # "token":J
    :cond_3e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allow to call grantImplicitAccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5730
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5731
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 5733
    .local v7, "callingAppId":I
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "getHarmfulAppInfo"

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5736
    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_29

    if-eqz v7, :cond_29

    .line 5737
    const-string v0, "android.permission.SET_HARMFUL_APP_WARNINGS"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 5738
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5742
    :cond_29
    :goto_29
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5743
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_38

    .line 5746
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5744
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 22
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 1200
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getHomeIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1201
    .local v11, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const-wide/16 v3, 0x80

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v12

    .line 1203
    .local v12, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 1204
    const/4 v13, 0x0

    if-nez v12, :cond_17

    .line 1205
    return-object v13

    .line 1207
    :cond_17
    move-object/from16 v14, p1

    invoke-interface {v14, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1209
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    move/from16 v9, p2

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v16

    .line 1210
    .local v16, "packageName":Ljava/lang/String;
    if-nez v16, :cond_5a

    .line 1218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1219
    .local v8, "appId":I
    const/16 v0, 0x2710

    if-lt v8, v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    move v10, v0

    .line 1220
    .local v10, "filtered":Z
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v17, 0x0

    .line 1221
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v5, v12

    move/from16 v18, v8

    .end local v8    # "appId":I
    .local v18, "appId":I
    move/from16 v8, v17

    move/from16 v9, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v0

    .line 1223
    .local v0, "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1224
    .local v1, "preferredResolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_5a

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5a

    .line 1225
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .end local v16    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    goto :goto_5c

    .line 1228
    .end local v0    # "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .end local v1    # "preferredResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v10    # "filtered":Z
    .end local v18    # "appId":I
    .restart local v16    # "packageName":Ljava/lang/String;
    :cond_5a
    move-object/from16 v2, v16

    .end local v16    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :goto_5c
    if-nez v2, :cond_5f

    .line 1229
    return-object v13

    .line 1232
    :cond_5f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 1233
    .local v0, "resolveInfosSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_64
    if-ge v1, v0, :cond_8b

    .line 1234
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1236
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_88

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1238
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 1233
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 1242
    .end local v1    # "i":I
    :cond_8b
    return-object v13
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .registers 3

    .line 1293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    return-object v0
.end method

.method public getInstallReason(Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5525
    .local v6, "callingUid":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "get install reason"

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5527
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5528
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v0, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 5529
    return v2

    .line 5531
    :cond_1c
    if-eqz v0, :cond_27

    .line 5532
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getInstallReason()I

    move-result v1

    return v1

    .line 5534
    :cond_27
    return v2
.end method

.method public getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5190
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5191
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5197
    .local v3, "userId":I
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v4

    .line 5198
    .local v4, "installSource":Lcom/android/server/pm/InstallSource;
    if-nez v4, :cond_14

    .line 5199
    const/4 v5, 0x0

    return-object v5

    .line 5202
    :cond_14
    iget-object v5, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 5203
    .local v5, "installerPackageName":Ljava/lang/String;
    if-eqz v5, :cond_27

    .line 5204
    iget-object v6, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 5205
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_26

    invoke-virtual {v0, v6, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 5206
    :cond_26
    const/4 v5, 0x0

    .line 5210
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_27
    iget-boolean v6, v4, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-eqz v6, :cond_42

    .line 5215
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_33

    const/4 v6, 0x1

    goto :goto_34

    :cond_33
    const/4 v6, 0x0

    .line 5216
    .local v6, "isInstantApp":Z
    :goto_34
    if-nez v6, :cond_3f

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 5217
    iget-object v7, v4, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .local v7, "initiatingPackageName":Ljava/lang/String;
    goto :goto_40

    .line 5219
    .end local v7    # "initiatingPackageName":Ljava/lang/String;
    :cond_3f
    const/4 v7, 0x0

    .line 5221
    .end local v6    # "isInstantApp":Z
    .restart local v7    # "initiatingPackageName":Ljava/lang/String;
    :goto_40
    move-object v6, v7

    goto :goto_64

    .line 5222
    .end local v7    # "initiatingPackageName":Ljava/lang/String;
    :cond_42
    iget-object v6, v4, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 5226
    move-object v7, v5

    move-object v6, v7

    .restart local v7    # "initiatingPackageName":Ljava/lang/String;
    goto :goto_64

    .line 5228
    .end local v7    # "initiatingPackageName":Ljava/lang/String;
    :cond_4f
    iget-object v7, v4, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .line 5229
    .restart local v7    # "initiatingPackageName":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 5230
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_62

    invoke-virtual {v0, v6, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v8

    if-eqz v8, :cond_60

    goto :goto_62

    :cond_60
    move-object v6, v7

    goto :goto_64

    .line 5231
    :cond_62
    :goto_62
    const/4 v7, 0x0

    move-object v6, v7

    .line 5236
    .end local v7    # "initiatingPackageName":Ljava/lang/String;
    .local v6, "initiatingPackageName":Ljava/lang/String;
    :goto_64
    iget-object v7, v4, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 5237
    .local v7, "originatingPackageName":Ljava/lang/String;
    if-eqz v7, :cond_77

    .line 5238
    iget-object v8, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 5239
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v8, :cond_76

    invoke-virtual {v0, v8, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 5240
    :cond_76
    const/4 v7, 0x0

    .line 5247
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_77
    if-eqz v7, :cond_86

    iget-object v8, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_86

    .line 5249
    const/4 v7, 0x0

    move-object v13, v7

    goto :goto_87

    .line 5255
    :cond_86
    move-object v13, v7

    .end local v7    # "originatingPackageName":Ljava/lang/String;
    .local v13, "originatingPackageName":Ljava/lang/String;
    :goto_87
    iget-object v14, v4, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 5256
    .local v14, "signatures":Lcom/android/server/pm/PackageSignatures;
    if-eqz v6, :cond_9c

    if-eqz v14, :cond_9c

    iget-object v7, v14, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v8, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v7, v8, :cond_9c

    .line 5258
    new-instance v7, Landroid/content/pm/SigningInfo;

    iget-object v8, v14, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v7, v8}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    move-object v15, v7

    .local v7, "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    goto :goto_9e

    .line 5260
    .end local v7    # "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :cond_9c
    const/4 v7, 0x0

    move-object v15, v7

    .line 5263
    .local v15, "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :goto_9e
    new-instance v16, Landroid/content/pm/InstallSourceInfo;

    iget v12, v4, Lcom/android/server/pm/InstallSource;->packageSource:I

    move-object/from16 v7, v16

    move-object v8, v6

    move-object v9, v15

    move-object v10, v13

    move-object v11, v5

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v16
.end method

.method public getInstalledApplications(JII)Ljava/util/List;
    .registers 23
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 4750
    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4751
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4753
    :cond_11
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4754
    :cond_1e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v9

    .line 4755
    .end local p1    # "flags":J
    .local v9, "flags":J
    const-wide/32 v0, 0x402000

    and-long/2addr v0, v9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    move v11, v0

    .line 4757
    .local v11, "listUninstalled":Z
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get installed application info"

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4765
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 4766
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move-wide v3, v9

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceStub;->getApplicationInfoBySelf(IIJI)Ljava/util/List;

    move-result-object v12

    .line 4767
    .local v12, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v12, :cond_4f

    .line 4768
    return-object v12

    .line 4772
    :cond_4f
    nop

    .line 4773
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v13

    .line 4774
    .local v13, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    if-eqz v11, :cond_e5

    .line 4775
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    .line 4776
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_68
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4778
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide v0, v9

    .line 4779
    .local v0, "effectiveFlags":J
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 4780
    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    move-wide/from16 v16, v0

    goto :goto_85

    .line 4779
    :cond_83
    move-wide/from16 v16, v0

    .line 4782
    .end local v0    # "effectiveFlags":J
    .local v16, "effectiveFlags":J
    :goto_85
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_c6

    .line 4783
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 p1, v11

    move-object v11, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local p1, "listUninstalled":Z
    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 4784
    move/from16 v11, p1

    goto :goto_68

    .line 4786
    :cond_9f
    invoke-virtual {v6, v11, v8, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 4787
    move/from16 v11, p1

    goto :goto_68

    .line 4789
    :cond_a8
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 4790
    invoke-interface {v11, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4789
    move-wide/from16 v1, v16

    move/from16 v4, p3

    move-object v5, v11

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4791
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_d9

    .line 4792
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_d9

    .line 4797
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "listUninstalled":Z
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "listUninstalled":Z
    :cond_c6
    move/from16 p1, v11

    move-object v11, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p1    # "listUninstalled":Z
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-wide/from16 v2, v16

    move/from16 v4, p4

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4800
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_d9
    :goto_d9
    if-eqz v0, :cond_de

    .line 4801
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4803
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "effectiveFlags":J
    :cond_de
    move/from16 v11, p1

    goto :goto_68

    .end local p1    # "listUninstalled":Z
    .local v11, "listUninstalled":Z
    :cond_e1
    move/from16 p1, v11

    .end local v11    # "listUninstalled":Z
    .restart local p1    # "listUninstalled":Z
    goto/16 :goto_149

    .line 4805
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .end local p1    # "listUninstalled":Z
    .restart local v11    # "listUninstalled":Z
    :cond_e5
    move/from16 p1, v11

    .end local v11    # "listUninstalled":Z
    .restart local p1    # "listUninstalled":Z
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    .line 4806
    .restart local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_fb
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_149

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4807
    .local v15, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 4808
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v4, :cond_10f

    .line 4809
    goto :goto_fb

    .line 4811
    :cond_10f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v3, p3

    move-object/from16 p2, v4

    .end local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local p2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 4812
    goto :goto_fb

    .line 4814
    :cond_122
    invoke-virtual {v6, v15, v8, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 4815
    goto :goto_fb

    .line 4817
    :cond_129
    nop

    .line 4818
    invoke-interface {v15, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4817
    move-object/from16 v0, p2

    move-wide v1, v9

    move/from16 v4, p3

    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4819
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_146

    .line 4820
    move-object/from16 v1, p2

    .end local p2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v6, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4821
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_148

    .line 4819
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_146
    move-object/from16 v1, p2

    .line 4823
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_148
    goto :goto_fb

    .line 4826
    :cond_149
    :goto_149
    return-object v14
.end method

.method public final getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1796
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1797
    .local v6, "callingUid":I
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1798
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 1800
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 1801
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p1

    .line 1803
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get installed packages"

    move-object v0, p0

    move v1, v6

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1806
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method protected getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;
    .registers 24
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1812
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 1813
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move/from16 v1, p4

    move-wide/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceStub;->getPackageInfoBySelf(IIJI)Ljava/util/List;

    move-result-object v11

    .line 1814
    .local v11, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v11, :cond_22

    .line 1815
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v11}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 1819
    :cond_22
    const-wide/32 v0, 0x402000

    and-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_30

    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v4

    :goto_31
    move v12, v0

    .line 1820
    .local v12, "listUninstalled":Z
    const-wide/32 v13, 0x40000000

    and-long/2addr v13, v7

    cmp-long v0, v13, v2

    if-eqz v0, :cond_3c

    move v0, v1

    goto :goto_3d

    :cond_3c
    move v0, v4

    :goto_3d
    move v13, v0

    .line 1821
    .local v13, "listApex":Z
    const-wide/32 v14, 0x200000

    and-long/2addr v14, v7

    cmp-long v0, v14, v2

    if-eqz v0, :cond_47

    goto :goto_48

    :cond_47
    move v1, v4

    :goto_48
    move v14, v1

    .line 1824
    .local v14, "listFactory":Z
    if-eqz v12, :cond_bc

    .line 1825
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v0

    .line 1826
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_69
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1827
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v14, :cond_8d

    .line 1828
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 1829
    goto :goto_69

    .line 1831
    :cond_7e
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1832
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1833
    .local v1, "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_8d

    .line 1834
    move-object v0, v1

    move-object v4, v0

    goto :goto_8e

    .line 1837
    .end local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_8d
    move-object v4, v0

    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_8e
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v17, v11

    move-object v11, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1838
    move-object/from16 v11, v17

    goto :goto_69

    .line 1840
    :cond_a3
    invoke-virtual {v6, v11, v10, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1841
    move-object/from16 v11, v17

    goto :goto_69

    .line 1843
    :cond_ac
    invoke-virtual {v6, v11, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1844
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_b5

    .line 1845
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v11    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_b5
    move-object/from16 v11, v17

    goto :goto_69

    .end local v17    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v11, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_b8
    move-object/from16 v17, v11

    .end local v11    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_131

    .line 1849
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v17    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_bc
    move-object/from16 v17, v11

    .end local v11    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v0

    .line 1850
    .restart local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_131

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1851
    .local v16, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 1852
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v14, :cond_106

    .line 1853
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-nez v1, :cond_f3

    .line 1854
    goto :goto_d4

    .line 1857
    :cond_f3
    if-nez v0, :cond_f7

    const/4 v1, 0x0

    goto :goto_101

    :cond_f7
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1858
    .restart local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_101
    if-eqz v1, :cond_106

    .line 1859
    move-object v0, v1

    move-object v4, v0

    goto :goto_107

    .line 1862
    .end local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_106
    move-object v4, v0

    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_107
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v18, v11

    move-object v11, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 1863
    move-object/from16 v11, v18

    goto :goto_d4

    .line 1865
    :cond_11c
    invoke-virtual {v6, v11, v10, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 1866
    move-object/from16 v11, v18

    goto :goto_d4

    .line 1868
    :cond_125
    invoke-virtual {v6, v11, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1869
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_12e

    .line 1870
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1872
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v11    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_12e
    move-object/from16 v11, v18

    goto :goto_d4

    .line 1874
    :cond_131
    :goto_131
    if-eqz v13, :cond_153

    .line 1875
    if-eqz v14, :cond_13f

    .line 1876
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getFactoryPackages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_153

    .line 1878
    :cond_13f
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getActivePackages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1879
    if-eqz v12, :cond_153

    .line 1880
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getInactivePackages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1884
    :cond_153
    :goto_153
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v15}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5155
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v1

    .line 5156
    .local v1, "installSource":Lcom/android/server/pm/InstallSource;
    if-eqz v1, :cond_22

    .line 5159
    iget-object v2, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 5160
    .local v2, "installerPackageName":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 5161
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5162
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_20

    .line 5163
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5162
    invoke-virtual {p0, v3, v0, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 5164
    :cond_20
    const/4 v2, 0x0

    .line 5167
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_21
    return-object v2

    .line 5157
    .end local v2    # "installerPackageName":Ljava/lang/String;
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .registers 2

    .line 5919
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_6

    .line 5920
    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 5919
    :goto_a
    return-object v0
.end method

.method public getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 5900
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .registers 7
    .param p1, "callingUid"    # I

    .line 2103
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2104
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 2106
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2107
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 2108
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 2109
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2110
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 2111
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v4

    .line 2112
    .local v4, "isInstantApp":Z
    if-eqz v4, :cond_32

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_32
    return-object v3

    .line 2114
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "isInstantApp":Z
    :cond_33
    return-object v3
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 15
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .line 4981
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4982
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4983
    .local v7, "callingUserId":I
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 4984
    .local v8, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    .line 4985
    .local v9, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4986
    .local v10, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v11, 0x0

    if-eqz v9, :cond_41

    if-nez v10, :cond_21

    goto :goto_41

    .line 4987
    :cond_21
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v6

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4989
    return-object v11

    .line 4991
    :cond_2e
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 4992
    .local v11, "i":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    int-to-long v2, p2

    move-object v0, v11

    move-object v1, v10

    move v4, v7

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;JILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    return-object v0

    .line 4986
    .end local v11    # "i":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    :cond_41
    :goto_41
    return-object v11
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 5341
    if-eqz p1, :cond_66

    if-nez p2, :cond_5

    goto :goto_66

    .line 5344
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5345
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_35

    .line 5346
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 5346
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_35

    .line 5351
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v1

    .line 5352
    .local v1, "ksms":Lcom/android/server/pm/KeySetManagerService;
    new-instance v2, Landroid/content/pm/KeySet;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v2

    .line 5348
    .end local v1    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySet requested for unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5342
    .end local v0    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_66
    :goto_66
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v0

    .line 1302
    .local v0, "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v0, :cond_13

    .line 1303
    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1305
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 9
    .param p1, "uid"    # I

    .line 4489
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4490
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4491
    return-object v2

    .line 4493
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4494
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4496
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4497
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4498
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4499
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_4e

    .line 4500
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4501
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4502
    return-object v2

    .line 4504
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v5, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4505
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_4e
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_61

    .line 4506
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4507
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 4508
    return-object v2

    .line 4510
    :cond_5c
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4512
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_61
    return-object v2
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 13
    .param p1, "uids"    # [I

    .line 4518
    const/4 v0, 0x0

    if-eqz p1, :cond_7b

    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_7b

    .line 4521
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4522
    .local v1, "callingUid":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 4523
    return-object v0

    .line 4525
    :cond_13
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4526
    .local v2, "callingUserId":I
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    .line 4527
    .local v3, "names":[Ljava/lang/String;
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1d
    if-ltz v4, :cond_7a

    .line 4528
    aget v5, p1, v4

    .line 4529
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 4530
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result v5

    .line 4532
    :cond_2b
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 4533
    .local v6, "appId":I
    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v7

    .line 4534
    .local v7, "obj":Ljava/lang/Object;
    instance-of v8, v7, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_5e

    .line 4535
    move-object v8, v7

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    .line 4536
    .local v8, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 4537
    aput-object v0, v3, v4

    goto :goto_5d

    .line 4539
    :cond_45
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shared:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    .line 4541
    .end local v8    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :goto_5d
    goto :goto_77

    :cond_5e
    instance-of v8, v7, Lcom/android/server/pm/PackageSetting;

    if-eqz v8, :cond_75

    .line 4542
    move-object v8, v7

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 4543
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 4544
    aput-object v0, v3, v4

    goto :goto_74

    .line 4546
    :cond_6e
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    .line 4548
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_74
    goto :goto_77

    .line 4549
    :cond_75
    aput-object v0, v3, v4

    .line 4527
    .end local v5    # "uid":I
    .end local v6    # "appId":I
    .end local v7    # "obj":Ljava/lang/Object;
    :goto_77
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 4552
    .end local v4    # "i":I
    :cond_7a
    return-object v3

    .line 4519
    .end local v1    # "callingUid":I
    .end local v2    # "callingUserId":I
    .end local v3    # "names":[Ljava/lang/String;
    :cond_7b
    :goto_7b
    return-object v0
.end method

.method public getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3689
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3690
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3692
    .local v1, "callingUserId":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3693
    .local v2, "packagesToNotify":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_23

    aget-object v5, p1, v4

    .line 3694
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3695
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-nez v7, :cond_20

    .line 3696
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3693
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 3700
    :cond_23
    return-object v2
.end method

.method public getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 8
    .param p1, "uid"    # I

    .line 920
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 922
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    :cond_b
    array-length v2, v0

    .line 923
    .local v2, "numPackages":I
    :goto_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-nez v1, :cond_1f

    if-ge v3, v2, :cond_1f

    .line 924
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 923
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 926
    .end local v3    # "i":I
    :cond_1f
    return-object v1
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 914
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 916
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;JI)[I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 3812
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3813
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3814
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    .line 3815
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "getPackageGids"

    move-object v2, p0

    move v3, v0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3818
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3819
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_23

    .line 3820
    return-object v1

    .line 3822
    :cond_23
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 3823
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 3824
    invoke-interface {v2, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 3825
    invoke-virtual {p0, v2, v0, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_52

    .line 3826
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3827
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    .line 3826
    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v1

    return-object v1

    .line 3830
    :cond_52
    const-wide/32 v3, 0x402000

    and-long/2addr v3, p2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_77

    .line 3831
    invoke-static {v2, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 3832
    invoke-virtual {p0, v2, v0, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_77

    .line 3833
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3834
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3833
    invoke-interface {v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v1

    return-object v1

    .line 3838
    :cond_77
    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1695
    nop

    .line 1696
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1695
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # J
    .param p6, "filterCallingUid"    # I
    .param p7, "userId"    # I

    .line 1707
    move-object v8, p0

    move/from16 v9, p7

    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 1708
    :cond_d
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1, v9}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v10

    .line 1709
    .end local p4    # "flags":J
    .local v10, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get package info"

    move-object v0, p0

    move/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1712
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v10

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # J
    .param p6, "filterCallingUid"    # I
    .param p7, "userId"    # I

    .line 1720
    move-object/from16 v6, p0

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    .line 1722
    .end local p1    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    const-wide/32 v0, 0x200000

    and-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    move v12, v0

    .line 1723
    .local v12, "matchFactoryOnly":Z
    const-wide/32 v4, 0x40000000

    const/4 v13, 0x0

    if-eqz v12, :cond_53

    .line 1725
    and-long v14, v7, v4

    cmp-long v0, v14, v2

    if-eqz v0, :cond_2f

    .line 1726
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v11, v1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 1729
    :cond_2f
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 1730
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v14, :cond_53

    .line 1731
    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p6

    move/from16 v3, p7

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1732
    return-object v13

    .line 1734
    :cond_47
    invoke-virtual {v6, v14, v9, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1735
    return-object v13

    .line 1737
    :cond_4e
    invoke-virtual {v6, v14, v7, v8, v10}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 1741
    .end local v14    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_53
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v11}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1742
    .local v14, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v12, :cond_67

    if-eqz v14, :cond_67

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_67

    .line 1743
    return-object v13

    .line 1745
    :cond_67
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_8d

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPackageInfo "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ": "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "PackageManager"

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_8d
    if-eqz v14, :cond_b5

    .line 1749
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    .line 1750
    .local v15, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p6

    move/from16 v3, p7

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1751
    return-object v13

    .line 1753
    :cond_a7
    if-eqz v15, :cond_b0

    invoke-virtual {v6, v15, v9, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1754
    return-object v13

    .line 1757
    :cond_b0
    invoke-virtual {v6, v15, v7, v8, v10}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 1759
    .end local v15    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_b5
    if-nez v12, :cond_e4

    const-wide/32 v15, 0x402000

    and-long/2addr v15, v7

    cmp-long v0, v15, v2

    if-eqz v0, :cond_e4

    .line 1760
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    .line 1761
    .restart local v15    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v15, :cond_c8

    return-object v13

    .line 1762
    :cond_c8
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p6

    move/from16 v3, p7

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1763
    return-object v13

    .line 1765
    :cond_d8
    invoke-virtual {v6, v15, v9, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1766
    return-object v13

    .line 1768
    :cond_df
    invoke-virtual {v6, v15, v7, v8, v10}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 1770
    .end local v15    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_e4
    and-long/2addr v4, v7

    cmp-long v0, v4, v2

    if-eqz v0, :cond_f0

    .line 1771
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, v11, v1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 1775
    :cond_f0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, v13, v11, v7, v8}, Lcom/android/server/pm/PackageManagerServiceStub;->hookPkgInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;J)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageOrSharedUser(I)Landroid/util/Pair;
    .registers 5
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Lcom/android/server/pm/pkg/SharedUserApi;",
            ">;"
        }
    .end annotation

    .line 5859
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 5860
    .local v0, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 5861
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 5862
    :cond_13
    instance-of v1, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_1f

    .line 5863
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 5865
    :cond_1f
    return-object v2
.end method

.method public getPackageStartability(ZLjava/lang/String;II)I
    .registers 8
    .param p1, "safeMode"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 3707
    invoke-static {p4}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    .line 3708
    .local v0, "userKeyUnlocked":Z
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 3709
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_3f

    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3710
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_3f

    .line 3714
    :cond_1b
    if-eqz p1, :cond_25

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v2

    if-nez v2, :cond_25

    .line 3715
    const/4 v2, 0x2

    return v2

    .line 3718
    :cond_25
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3719
    const/4 v2, 0x3

    return v2

    .line 3722
    :cond_2f
    if-nez v0, :cond_3d

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isEncryptionAware(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 3723
    const/4 v2, 0x4

    return v2

    .line 3725
    :cond_3d
    const/4 v2, 0x0

    return v2

    .line 3711
    :cond_3f
    :goto_3f
    const/4 v2, 0x1

    return v2
.end method

.method public getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4274
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4275
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_e

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_e

    .line 4278
    :cond_d
    return-object v0

    .line 4276
    :cond_e
    :goto_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1785
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    return-object v0
.end method

.method public getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 1790
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1792
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    return-object v0
.end method

.method public getPackageStates()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 3670
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;JI)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 5488
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    .line 5489
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5490
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    .line 5491
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getPackageUid"

    move-object v1, p0

    move v2, v0

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5493
    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result v1

    return v1
.end method

.method public getPackageUidInternal(Ljava/lang/String;JII)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 2828
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2829
    .local v0, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_33

    invoke-static {v0, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2830
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 2831
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_33

    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2832
    invoke-virtual {p0, v1, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2833
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    return v2

    .line 2836
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_33
    const-wide/32 v1, 0x402000

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5a

    .line 2837
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 2838
    .restart local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_5a

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2839
    invoke-virtual {p0, v1, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 2840
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-static {p4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    return v2

    .line 2844
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_5a
    const/4 v1, -0x1

    return v1
.end method

.method public getPackagesForAppId(I)Ljava/util/List;
    .registers 5
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 5790
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 5791
    .local v0, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_12

    .line 5792
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 5793
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 5794
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_12
    instance-of v1, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_22

    .line 5795
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5796
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 5798
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 2226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "isCallerInstantApp"    # Z

    .line 2242
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 2243
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 2244
    if-eqz p4, :cond_e

    .line 2245
    return-object v2

    .line 2247
    :cond_e
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 2248
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 2249
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v2

    .line 2250
    .local v2, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 2251
    .local v3, "n":I
    new-array v4, v3, [Ljava/lang/String;

    .line 2252
    .local v4, "res":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2253
    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1e
    if-ge v6, v3, :cond_42

    .line 2254
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2255
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 2256
    invoke-virtual {p0, v7, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v8

    if-nez v8, :cond_3f

    .line 2257
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    move v5, v8

    .line 2253
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 2260
    .end local v6    # "index":I
    :cond_42
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 2261
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v2    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v3    # "n":I
    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_49
    instance-of v1, v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v1, :cond_6b

    .line 2262
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2263
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2264
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2265
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-object v2

    .line 2268
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_6b
    return-object v2
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 23
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 4687
    move-object/from16 v8, p0

    move/from16 v9, p4

    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4688
    :cond_11
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1, v9}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v10

    .line 4689
    .end local p2    # "flags":J
    .local v10, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "get packages holding permissions"

    move-object/from16 v0, p0

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4691
    const-wide/32 v0, 0x402000

    and-long/2addr v0, v10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    move v12, v0

    .line 4693
    .local v12, "listUninstalled":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 4694
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v14, p1

    array-length v0, v14

    new-array v15, v0, [Z

    .line 4695
    .local v15, "tmpBools":[Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4696
    .local v17, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_62

    if-nez v12, :cond_62

    .line 4697
    goto :goto_4b

    .line 4699
    :cond_62
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move-object v4, v15

    move-wide v5, v10

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V

    .line 4700
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_4b

    .line 4702
    :cond_71
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v13}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;
    .registers 24
    .param p1, "libInfo"    # Landroid/content/pm/SharedLibraryInfo;
    .param p2, "flags"    # J
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/SharedLibraryInfo;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 4052
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v3, 0x0

    .line 4053
    .local v3, "versionedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v4

    .line 4054
    .local v4, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 4055
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    if-ge v6, v5, :cond_f2

    .line 4056
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4057
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v7, :cond_1e

    .line 4058
    move-wide/from16 v9, p2

    goto/16 :goto_ea

    .line 4061
    :cond_1e
    invoke-interface {v7, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    move-wide/from16 v9, p2

    invoke-static {v8, v9, v10}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 4062
    goto/16 :goto_ea

    .line 4065
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4066
    .local v8, "libName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v11

    if-nez v11, :cond_81

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v11

    if-eqz v11, :cond_3d

    goto :goto_81

    .line 4092
    :cond_3d
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    if-eqz v11, :cond_e9

    .line 4093
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5f

    .line 4094
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ea

    .line 4095
    :cond_5f
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 4096
    goto/16 :goto_ea

    .line 4098
    :cond_67
    if-nez v3, :cond_6f

    .line 4099
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v11

    .line 4101
    :cond_6f
    new-instance v11, Landroid/content/pm/VersionedPackage;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 4102
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v13

    invoke-direct {v11, v12, v13, v14}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4101
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ea

    .line 4068
    :cond_81
    :goto_81
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v11

    if-eqz v11, :cond_8c

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v11

    goto :goto_90

    :cond_8c
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v11

    .line 4069
    .local v11, "libs":[Ljava/lang/String;
    :goto_90
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v12

    if-eqz v12, :cond_9b

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v12

    goto :goto_9f

    .line 4070
    :cond_9b
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v12

    :goto_9f
    nop

    .line 4072
    .local v12, "libsVersions":[J
    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    .line 4073
    .local v13, "libIdx":I
    if-gez v13, :cond_a7

    .line 4074
    goto :goto_ea

    .line 4076
    :cond_a7
    aget-wide v14, v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_b2

    .line 4077
    goto :goto_ea

    .line 4079
    :cond_b2
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v14

    if-eqz v14, :cond_b9

    .line 4080
    goto :goto_ea

    .line 4082
    :cond_b9
    if-nez v3, :cond_c1

    .line 4083
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v14

    .line 4086
    :cond_c1
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4087
    .local v14, "dependentPackageName":Ljava/lang/String;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_dd

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v15

    if-eqz v15, :cond_dd

    .line 4088
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4090
    :cond_dd
    new-instance v15, Landroid/content/pm/VersionedPackage;

    .line 4091
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v0

    invoke-direct {v15, v14, v0, v1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4090
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4092
    .end local v11    # "libs":[Ljava/lang/String;
    .end local v12    # "libsVersions":[J
    .end local v13    # "libIdx":I
    .end local v14    # "dependentPackageName":Ljava/lang/String;
    :cond_e9
    nop

    .line 4055
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "libName":Ljava/lang/String;
    :cond_ea
    :goto_ea
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    goto/16 :goto_10

    :cond_f2
    move-wide/from16 v9, p2

    .line 4107
    .end local v6    # "i":I
    return-object v3
.end method

.method public getPersistentApplications(ZI)Ljava/util/List;
    .registers 20
    .param p1, "safeMode"    # Z
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 5602
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 5603
    invoke-static {}, Lcom/android/server/pm/UserManagerServiceStub;->get()Lcom/android/server/pm/UserManagerServiceStub;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-interface {v3, v5}, Lcom/android/server/pm/UserManagerServiceStub;->isInMaintenanceMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5604
    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->isUserUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 5605
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v5, v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceStub;->getPersistentAppsForOtherUser(Lcom/android/server/pm/PackageManagerService;ZII)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 5608
    :cond_2f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5610
    .local v3, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    .line 5611
    .local v4, "numPackages":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 5612
    .local v11, "userId":I
    const/4 v5, 0x0

    move v12, v5

    .local v12, "index":I
    :goto_40
    if-ge v12, v4, :cond_a1

    .line 5613
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v12}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5615
    .local v13, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/high16 v5, 0x40000

    and-int/2addr v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5a

    .line 5616
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v5

    if-nez v5, :cond_5a

    move v5, v7

    goto :goto_5b

    :cond_5a
    move v5, v6

    :goto_5b
    move v14, v5

    .line 5617
    .local v14, "matchesUnaware":Z
    const/high16 v5, 0x80000

    and-int/2addr v5, v2

    if-eqz v5, :cond_69

    .line 5618
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v5

    if-eqz v5, :cond_69

    move v6, v7

    goto :goto_6a

    :cond_69
    nop

    :goto_6a
    move v15, v6

    .line 5620
    .local v15, "matchesAware":Z
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_9e

    if-eqz v1, :cond_79

    .line 5621
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_9e

    :cond_79
    if-nez v14, :cond_7d

    if-eqz v15, :cond_9e

    .line 5623
    :cond_7d
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 5624
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_9c

    .line 5625
    int-to-long v6, v2

    .line 5626
    invoke-interface {v10, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 5625
    move-object v5, v13

    move v9, v11

    move-object/from16 v16, v10

    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v16, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 5627
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_9e

    .line 5628
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 5624
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_9c
    move-object/from16 v16, v10

    .line 5612
    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v14    # "matchesUnaware":Z
    .end local v15    # "matchesAware":Z
    :cond_9e
    :goto_9e
    add-int/lit8 v12, v12, 0x1

    goto :goto_40

    .line 5634
    .end local v12    # "index":I
    :cond_a1
    return-object v3
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 3
    .param p1, "userId"    # I

    .line 3664
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateFlagsForUid(I)I
    .registers 9
    .param p1, "uid"    # I

    .line 4602
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4603
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4604
    return v2

    .line 4606
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4607
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4609
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4610
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4611
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4612
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_37

    .line 4613
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4614
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4615
    return v2

    .line 4617
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPrivateFlags()I

    move-result v2

    return v2

    .line 4618
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_37
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_4a

    .line 4619
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4620
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 4621
    return v2

    .line 4623
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v2

    return v2

    .line 4625
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4a
    return v2
.end method

.method public getProcessesForUid(I)Landroid/util/ArrayMap;
    .registers 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 5835
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5836
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5838
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5839
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5840
    .local v1, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_24

    .line 5841
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5842
    .local v2, "sus":Lcom/android/server/pm/SharedUserSetting;
    iget-object v5, v2, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object v3

    return-object v3

    .line 5843
    .end local v2    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_24
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    const/4 v5, 0x0

    if-eqz v2, :cond_3c

    .line 5844
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5845
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 5846
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v6, :cond_33

    goto :goto_3b

    :cond_33
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object v5

    :goto_3b
    return-object v5

    .line 5848
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_3c
    return-object v5
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 2272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2274
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2276
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2274
    return-object v2

    .line 2276
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2277
    throw v2
.end method

.method public getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .registers 23
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 4191
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p4

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_10

    return-object v8

    .line 4192
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 4193
    .local v16, "callingUid":I
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1, v15}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v13

    .line 4194
    .end local p2    # "flags":J
    .local v13, "flags":J
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get provider info"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4196
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedProvider;

    move-result-object v12

    .line 4197
    .local v12, "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProviderInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    :cond_53
    if-nez v12, :cond_56

    .line 4200
    return-object v8

    .line 4203
    :cond_56
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 4204
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_ac

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_6a

    move-object v1, v10

    move-object v2, v12

    move-wide v3, v13

    goto :goto_af

    .line 4208
    :cond_6a
    invoke-static {v10, v12, v13, v14, v15}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 4209
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 4211
    return-object v8

    .line 4213
    :cond_81
    invoke-interface {v10, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v17

    .line 4214
    .local v17, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    nop

    .line 4215
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    move-wide v1, v13

    move-object/from16 v3, v17

    move/from16 v4, p4

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4216
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_97

    .line 4217
    return-object v8

    .line 4219
    :cond_97
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    move-object v9, v12

    move-object v1, v10

    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide v10, v13

    move-object v2, v12

    .end local v12    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .local v2, "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    move-object/from16 v12, v17

    move-wide v3, v13

    .end local v13    # "flags":J
    .local v3, "flags":J
    move-object v13, v0

    move/from16 v14, p4

    move-object v15, v1

    invoke-static/range {v8 .. v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    return-object v5

    .line 4222
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v3    # "flags":J
    .end local v17    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .restart local v13    # "flags":J
    :cond_ab
    return-object v8

    .line 4204
    :cond_ac
    move-object v1, v10

    move-object v2, v12

    move-wide v3, v13

    .line 4205
    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v13    # "flags":J
    .restart local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v2    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .restart local v3    # "flags":J
    :goto_af
    return-object v8
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 16
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 3889
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3890
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3891
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 3892
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "get receiver info"

    move-object v2, p0

    move v3, v0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3895
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v2, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v9

    .line 3896
    .local v9, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getReceiverInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    :cond_48
    if-nez v9, :cond_4b

    .line 3900
    return-object v1

    .line 3903
    :cond_4b
    invoke-interface {v9}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 3904
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_81

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_5c

    goto :goto_81

    .line 3908
    :cond_5c
    invoke-static {v10, v9, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 3909
    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, v10

    move v4, v0

    move-object v5, p1

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 3910
    return-object v1

    .line 3912
    :cond_6f
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 3913
    invoke-interface {v10, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    .line 3912
    move-object v3, v9

    move-wide v4, p2

    move v7, p4

    move-object v8, v10

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1

    .line 3915
    :cond_80
    return-object v1

    .line 3905
    :cond_81
    :goto_81
    return-object v1
.end method

.method public getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3676
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 2058
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2059
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2060
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 2061
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get service info"

    move-object v1, p0

    move v2, v0

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 2064
    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    return-object v1
.end method

.method protected getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;
    .registers 23
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 2069
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;

    move-result-object v15

    .line 2070
    .local v15, "s":Lcom/android/server/pm/pkg/component/ParsedService;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_30

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_30
    const/4 v14, 0x0

    if-nez v15, :cond_34

    .line 2075
    return-object v14

    .line 2078
    :cond_34
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2079
    .local v16, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v8, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v9, v16

    move-object v10, v15

    move-wide/from16 v11, p2

    move/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2080
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 2081
    .local v13, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v13, :cond_5e

    return-object v14

    .line 2082
    :cond_5e
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2084
    return-object v14

    .line 2086
    :cond_6f
    nop

    .line 2087
    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    .line 2086
    move-object/from16 v8, v16

    move-object v9, v15

    move-wide/from16 v10, p2

    move-object v1, v13

    .end local v13    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v13, p4

    move-object v14, v1

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    return-object v2

    .line 2089
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_84
    move/from16 v0, p4

    return-object v14
.end method

.method public getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 45
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 3922
    move-object/from16 v9, p0

    move/from16 v10, p4

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_e

    return-object v11

    .line 3923
    :cond_e
    const-string/jumbo v0, "userId must be >= 0"

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 3924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 3925
    .local v12, "callingUid":I
    invoke-virtual {v9, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3926
    return-object v11

    .line 3929
    :cond_1f
    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1, v10}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v13

    .line 3931
    .end local p2    # "flags":J
    .local v13, "flags":J
    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3932
    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3934
    const-string v2, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_57

    .line 3936
    move-object/from16 v15, p1

    invoke-virtual {v9, v15, v12, v10, v1}, Lcom/android/server/pm/ComputerEngine;->canRequestPackageInstalls(Ljava/lang/String;IIZ)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3938
    const-string v2, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3940
    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_5c

    .line 3934
    :cond_57
    move-object/from16 v15, p1

    goto :goto_5c

    .line 3932
    :cond_5a
    move-object/from16 v15, p1

    .line 3940
    :cond_5c
    :goto_5c
    const/4 v1, 0x1

    :cond_5d
    move/from16 v16, v1

    .line 3943
    .local v16, "canSeeStaticAndSdkLibraries":Z
    nop

    .line 3944
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    .line 3945
    .local v8, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v0, 0x0

    .line 3946
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    .line 3947
    .local v7, "libCount":I
    const/4 v1, 0x0

    move v5, v1

    .local v5, "i":I
    :goto_6b
    if-ge v5, v7, :cond_178

    .line 3948
    invoke-virtual {v8, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 3949
    .local v6, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v6, :cond_7e

    .line 3950
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto/16 :goto_170

    .line 3953
    :cond_7e
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v3

    .line 3954
    .local v3, "versionCount":I
    const/4 v1, 0x0

    move-object/from16 v17, v0

    move v4, v1

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "j":I
    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_86
    if-ge v4, v3, :cond_162

    .line 3955
    invoke-virtual {v6, v4}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/pm/SharedLibraryInfo;

    .line 3956
    .local v18, "libInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v16, :cond_ae

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 3957
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto/16 :goto_16e

    .line 3956
    :cond_a6
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto/16 :goto_16e

    .line 3959
    :cond_ae
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3960
    .local v19, "identity":J
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v33

    .line 3962
    .local v33, "declaringPackage":Landroid/content/pm/VersionedPackage;
    nop

    .line 3963
    :try_start_b7
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3964
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v21

    const-wide/32 v0, 0x4000000

    or-long v23, v13, v0

    .line 3966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_c8
    .catchall {:try_start_b7 .. :try_end_c8} :catchall_151

    .line 3962
    move-object/from16 v1, p0

    move/from16 v34, v3

    move/from16 v35, v4

    .end local v3    # "versionCount":I
    .end local v4    # "j":I
    .local v34, "versionCount":I
    .local v35, "j":I
    move-wide/from16 v3, v21

    move/from16 v36, v5

    move-object/from16 v37, v6

    .end local v5    # "i":I
    .end local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v36, "i":I
    .local v37, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    move-wide/from16 v5, v23

    move/from16 v38, v7

    .end local v7    # "libCount":I
    .local v38, "libCount":I
    move v7, v0

    move-object/from16 v39, v8

    .end local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .local v39, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    move/from16 v8, p4

    :try_start_dd
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_14f

    .line 3967
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_e7

    .line 3971
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3968
    goto :goto_141

    .line 3971
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_e7
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3972
    nop

    .line 3974
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 3975
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v24

    .line 3976
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v26

    .line 3977
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v28

    .line 3978
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-wide v3, v13

    move v5, v12

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v30

    .line 3979
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11a

    .line 3980
    move-object/from16 v31, v11

    goto :goto_125

    .line 3981
    :cond_11a
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v31, v1

    .line 3982
    :goto_125
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v32

    move-object/from16 v21, v0

    move-object/from16 v29, v33

    invoke-direct/range {v21 .. v32}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 3984
    .local v0, "resLibInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v17, :cond_13a

    .line 3985
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v1

    goto :goto_13c

    .line 3984
    :cond_13a
    move-object/from16 v1, v17

    .line 3987
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_13c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    .line 3954
    .end local v0    # "resLibInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v18    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v19    # "identity":J
    .end local v33    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_141
    add-int/lit8 v4, v35, 0x1

    move/from16 v3, v34

    move/from16 v5, v36

    move-object/from16 v6, v37

    move/from16 v7, v38

    move-object/from16 v8, v39

    .end local v35    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_86

    .line 3971
    .end local v4    # "j":I
    .restart local v18    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v19    # "identity":J
    .restart local v33    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v35    # "j":I
    :catchall_14f
    move-exception v0

    goto :goto_15e

    .end local v34    # "versionCount":I
    .end local v35    # "j":I
    .end local v36    # "i":I
    .end local v37    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v38    # "libCount":I
    .end local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v3    # "versionCount":I
    .restart local v4    # "j":I
    .restart local v5    # "i":I
    .restart local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v7    # "libCount":I
    .restart local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :catchall_151
    move-exception v0

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v37, v6

    move/from16 v38, v7

    move-object/from16 v39, v8

    .end local v3    # "versionCount":I
    .end local v4    # "j":I
    .end local v5    # "i":I
    .end local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v7    # "libCount":I
    .end local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v34    # "versionCount":I
    .restart local v35    # "j":I
    .restart local v36    # "i":I
    .restart local v37    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v38    # "libCount":I
    .restart local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :goto_15e
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3972
    throw v0

    .line 3954
    .end local v18    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v19    # "identity":J
    .end local v33    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v34    # "versionCount":I
    .end local v35    # "j":I
    .end local v36    # "i":I
    .end local v37    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v38    # "libCount":I
    .end local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v3    # "versionCount":I
    .restart local v4    # "j":I
    .restart local v5    # "i":I
    .restart local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v7    # "libCount":I
    .restart local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :cond_162
    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v37, v6

    move/from16 v38, v7

    move-object/from16 v39, v8

    .line 3947
    .end local v3    # "versionCount":I
    .end local v4    # "j":I
    .end local v5    # "i":I
    .end local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v7    # "libCount":I
    .end local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v36    # "i":I
    .restart local v38    # "libCount":I
    .restart local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :goto_16e
    move-object/from16 v0, v17

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_170
    add-int/lit8 v5, v36, 0x1

    move/from16 v7, v38

    move-object/from16 v8, v39

    .end local v36    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_6b

    .end local v38    # "libCount":I
    .end local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v7    # "libCount":I
    .restart local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :cond_178
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    .line 3991
    .end local v5    # "i":I
    .end local v7    # "libCount":I
    .end local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v38    # "libCount":I
    .restart local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    if-eqz v0, :cond_185

    new-instance v11, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v11, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :cond_185
    return-object v11
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

    .line 3683
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0}, Lcom/android/server/pm/SharedLibrariesRead;->getAll()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # J

    .line 2094
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/SharedLibrariesRead;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 3
    .param p1, "sharedUserAppId"    # I

    .line 5876
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromAppId(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUserPackages(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "sharedUserAppId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 5882
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5651
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5652
    .local v0, "packageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_4f

    .line 5656
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5657
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 5658
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 5659
    .local v2, "numPackages":I
    new-array v3, v2, [Ljava/lang/String;

    .line 5660
    .local v3, "res":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 5661
    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_23
    if-ge v5, v2, :cond_41

    .line 5662
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5663
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 5664
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    move v4, v7

    .line 5661
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 5667
    .end local v5    # "index":I
    :cond_41
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [Ljava/lang/String;

    .line 5668
    if-eqz v3, :cond_4c

    move-object v5, v3

    goto :goto_4e

    :cond_4c
    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_4e
    return-object v5

    .line 5653
    .end local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v2    # "numPackages":I
    .end local v3    # "res":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_4f
    :goto_4f
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1
.end method

.method public getSigningDetails(I)Landroid/content/pm/SigningDetails;
    .registers 6
    .param p1, "uid"    # I

    .line 3110
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3111
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 3112
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_24

    .line 3113
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_18

    .line 3114
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v2

    .line 3115
    :cond_18
    instance-of v2, v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v2, :cond_24

    .line 3116
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3117
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    return-object v3

    .line 3120
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_24
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object v2
.end method

.method public getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3102
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3103
    .local v0, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_c

    .line 3104
    const/4 v1, 0x0

    return-object v1

    .line 3106
    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5358
    if-nez p1, :cond_4

    .line 5359
    const/4 v0, 0x0

    return-object v0

    .line 5361
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5362
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5363
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5364
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_47

    .line 5365
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_47

    .line 5371
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    if-eq v3, v0, :cond_37

    const/16 v3, 0x3e8

    if-ne v3, v0, :cond_2f

    goto :goto_37

    .line 5373
    :cond_2f
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "May not access signing KeySet of other apps."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5375
    :cond_37
    :goto_37
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v3

    .line 5376
    .local v3, "ksms":Lcom/android/server/pm/KeySetManagerService;
    new-instance v4, Landroid/content/pm/KeySet;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/KeySetManagerService;->getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v4

    .line 5367
    .end local v3    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeySet requested for unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5369
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 16

    .line 4229
    nop

    .line 4230
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    .line 4231
    .local v0, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v1, 0x0

    .line 4232
    .local v1, "libs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    .line 4233
    .local v2, "libCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_71

    .line 4234
    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 4235
    .local v4, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v4, :cond_16

    .line 4236
    goto :goto_6e

    .line 4238
    :cond_16
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    .line 4239
    .local v5, "versionCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1b
    if-ge v6, v5, :cond_6e

    .line 4240
    invoke-virtual {v4, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 4241
    .local v7, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v8

    if-nez v8, :cond_39

    .line 4242
    if-nez v1, :cond_31

    .line 4243
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v8

    .line 4245
    :cond_31
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4246
    goto :goto_6e

    .line 4248
    :cond_39
    nop

    .line 4249
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 4250
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v8, :cond_6b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const-wide/32 v13, 0x4000000

    .line 4250
    move-object v9, p0

    move-object v10, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v9

    if-nez v9, :cond_6b

    .line 4253
    if-nez v1, :cond_63

    .line 4254
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v9

    .line 4256
    :cond_63
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4257
    goto :goto_6e

    .line 4239
    .end local v7    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 4233
    .end local v4    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    :cond_6e
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4262
    .end local v3    # "i":I
    :cond_71
    if-eqz v1, :cond_7d

    .line 4263
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 4264
    .local v3, "libsArray":[Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4265
    return-object v3

    .line 4268
    .end local v3    # "libsArray":[Ljava/lang/String;
    :cond_7d
    const/4 v3, 0x0

    return-object v3
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3843
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3844
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, -0x1

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_26

    .line 3847
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3848
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 3847
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3849
    return v1

    .line 3851
    :cond_1d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    return v1

    .line 3845
    :cond_26
    :goto_26
    return v1
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 6
    .param p1, "sharedUserName"    # Ljava/lang/String;

    .line 4557
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 4558
    return v0

    .line 4560
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4561
    .local v1, "callingUid":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 4562
    return v0

    .line 4564
    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromId(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    .line 4565
    .local v2, "suid":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v2, :cond_24

    .line 4566
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4565
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v3

    if-nez v3, :cond_24

    .line 4567
    iget v0, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return v0

    .line 4569
    :cond_24
    return v0
.end method

.method public getUidTargetSdkVersion(I)I
    .registers 11
    .param p1, "uid"    # I

    .line 5804
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5805
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5807
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5808
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5809
    .local v1, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_44

    .line 5810
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5811
    .local v2, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 5812
    invoke-virtual {v2}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v3

    .line 5813
    .local v3, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/16 v4, 0x2710

    .line 5814
    .local v4, "vers":I
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 5815
    .local v5, "numPackages":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_27
    if-ge v6, v5, :cond_43

    .line 5816
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5817
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    if-eqz v8, :cond_40

    .line 5818
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    .line 5819
    .local v8, "v":I
    if-ge v8, v4, :cond_40

    move v4, v8

    .line 5815
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "v":I
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 5822
    .end local v6    # "index":I
    :cond_43
    return v4

    .line 5823
    .end local v2    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v3    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v4    # "vers":I
    .end local v5    # "numPackages":I
    :cond_44
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_5a

    .line 5824
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5825
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 5826
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    return v3

    .line 5829
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_5a
    const/16 v2, 0x2710

    return v2
.end method

.method public getUnusedPackages(J)Ljava/util/Set;
    .registers 24
    .param p1, "downgradeTimeThresholdMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5675
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5676
    .local v1, "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 5677
    .local v13, "currentTimeInMillis":J
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5678
    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v15

    .line 5679
    .local v15, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v2, 0x0

    move v11, v2

    .local v11, "index":I
    :goto_13
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v11, v2, :cond_66

    .line 5680
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5681
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 5682
    move/from16 v20, v11

    goto :goto_63

    .line 5684
    :cond_2a
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 5685
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v17

    .line 5686
    .local v17, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    nop

    .line 5687
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v2

    .line 5689
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v9

    .line 5690
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v18

    .line 5686
    move-wide v4, v13

    move-wide/from16 v6, p1

    move-object/from16 v8, v17

    move/from16 v20, v11

    .end local v11    # "index":I
    .local v20, "index":I
    move-wide/from16 v11, v18

    invoke-static/range {v2 .. v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUnusedSinceTimeInMillis(JJJLcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;JJ)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 5691
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5679
    .end local v16    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v17    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :cond_63
    :goto_63
    add-int/lit8 v11, v20, 0x1

    .end local v20    # "index":I
    .restart local v11    # "index":I
    goto :goto_13

    .line 5694
    .end local v11    # "index":I
    :cond_66
    return-object v1
.end method

.method public getUnusedPackagesToCompress(J)Landroid/util/ArrayMap;
    .registers 14
    .param p1, "compressTimeThresholdMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5701
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5703
    .local v0, "unusedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5704
    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v1

    .line 5705
    .local v1, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 5706
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5707
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_1f

    .line 5708
    goto :goto_5c

    .line 5710
    :cond_1f
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 5711
    goto :goto_5c

    .line 5714
    :cond_2e
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v4

    .line 5715
    .local v4, "latestUsed":J
    nop

    .line 5716
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v6

    .line 5718
    .local v6, "latestFGUsed":J
    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-lez v10, :cond_5c

    cmp-long v10, v4, p1

    if-gez v10, :cond_5c

    cmp-long v8, v6, v8

    if-lez v8, :cond_5c

    cmp-long v8, v6, p1

    if-gez v8, :cond_5c

    .line 5720
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPathString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5705
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "latestUsed":J
    .end local v6    # "latestFGUsed":J
    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5723
    .end local v2    # "index":I
    :cond_5f
    return-object v0
.end method

.method public final getUsed()I
    .registers 2

    .line 490
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return v0
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .registers 2

    .line 5979
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 475
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    return v0
.end method

.method public getVisibilityAllowList(Ljava/lang/String;I)[I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5430
    nop

    .line 5431
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5432
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5433
    return-object v1

    .line 5435
    :cond_b
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    .line 5436
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v4

    .line 5435
    invoke-interface {v2, p0, v0, v3, v4}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v2

    .line 5437
    .local v2, "visibilityAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-eqz v2, :cond_23

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :cond_23
    return-object v1
.end method

.method public getVolumePackages(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 5967
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .param p3, "type"    # I

    .line 4387
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4388
    .local v0, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 4389
    return v1

    .line 4391
    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 4392
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_17

    .line 4393
    return v1

    .line 4395
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4396
    .local v3, "callingUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4397
    .local v4, "callingUserId":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 4398
    return v1

    .line 4400
    :cond_26
    packed-switch p3, :pswitch_data_3c

    .line 4406
    return v1

    .line 4404
    :pswitch_2a
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v1

    return v1

    .line 4402
    :pswitch_33
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result v1

    return v1

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2a
    .end packed-switch
.end method

.method public hasUidSigningCertificate(I[BI)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "certificate"    # [B
    .param p3, "type"    # I

    .line 4413
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4414
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4416
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 4418
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 4419
    .local v3, "obj":Ljava/lang/Object;
    const/4 v4, 0x0

    if-eqz v3, :cond_4a

    .line 4420
    instance-of v5, v3, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_28

    .line 4421
    move-object v5, v3

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4422
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 4423
    return v4

    .line 4425
    :cond_23
    iget-object v6, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 4426
    .local v5, "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_3b

    .end local v5    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_28
    instance-of v5, v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_49

    .line 4427
    move-object v5, v3

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4428
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 4429
    return v4

    .line 4431
    :cond_36
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    .line 4432
    .local v5, "signingDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 4438
    :goto_3b
    packed-switch p3, :pswitch_data_4c

    .line 4444
    return v4

    .line 4442
    :pswitch_3f
    invoke-virtual {v5, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v4

    return v4

    .line 4440
    :pswitch_44
    invoke-virtual {v5, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result v4

    return v4

    .line 4433
    .end local v5    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_49
    return v4

    .line 4436
    :cond_4a
    return v4

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3f
    .end packed-switch
.end method

.method protected instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 5507
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5508
    return v0

    .line 5510
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5511
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_f

    .line 5512
    return v0

    .line 5515
    :cond_f
    nop

    .line 5516
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 5515
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5517
    .local v2, "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_28

    .line 5518
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 5517
    :goto_29
    return v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2478
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 2479
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2480
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    .line 2479
    :goto_18
    return v1

    .line 2482
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2483
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_2e

    .line 2484
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    .line 2483
    :goto_2f
    return v1
.end method

.method public isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .registers 9
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "userId"    # I

    .line 5317
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 5318
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5319
    invoke-virtual {v2, v1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    .line 5320
    .local v2, "appEnabledSetting":I
    const/4 v3, 0x1

    if-nez v2, :cond_13

    .line 5321
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_16

    .line 5322
    return v0

    .line 5324
    :cond_13
    if-eq v2, v3, :cond_16

    .line 5325
    return v0

    .line 5328
    :cond_16
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5329
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 5328
    invoke-virtual {v4, v5, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    .line 5330
    .local v4, "componentEnabledSetting":I
    if-nez v4, :cond_27

    .line 5331
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_26} :catch_2b

    return v0

    .line 5332
    :cond_27
    if-ne v4, v3, :cond_2a

    move v0, v3

    :cond_2a
    return v0

    .line 5333
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appEnabledSetting":I
    .end local v4    # "componentEnabledSetting":I
    :catch_2b
    move-exception v1

    .line 5334
    .local v1, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 2488
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2489
    return v0

    .line 2491
    :cond_8
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2492
    return v0

    .line 2494
    :cond_10
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .line 2499
    const/high16 v0, 0x200000

    const/high16 v1, 0x100000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_2e

    .line 2500
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v4, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v4

    .line 2501
    .local v4, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_11

    .line 2502
    return v3

    .line 2504
    :cond_11
    nop

    .line 2505
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    move v1, v3

    .line 2506
    .local v1, "visibleToInstantApp":Z
    :goto_1c
    nop

    .line 2507
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    move v0, v3

    .line 2509
    .local v0, "explicitlyVisibleToInstantApp":Z
    :goto_27
    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    return v2

    .line 2510
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_2e
    const/4 v4, 0x2

    if-ne p2, v4, :cond_57

    .line 2511
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v4, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v4

    .line 2512
    .restart local v4    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_3a

    .line 2513
    return v3

    .line 2515
    :cond_3a
    nop

    .line 2516
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_44

    move v1, v2

    goto :goto_45

    :cond_44
    move v1, v3

    .line 2517
    .restart local v1    # "visibleToInstantApp":Z
    :goto_45
    nop

    .line 2518
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_4f

    move v0, v2

    goto :goto_50

    :cond_4f
    move v0, v3

    .line 2520
    .restart local v0    # "explicitlyVisibleToInstantApp":Z
    :goto_50
    if-eqz v1, :cond_55

    if-nez v0, :cond_55

    goto :goto_56

    :cond_55
    move v2, v3

    :goto_56
    return v2

    .line 2521
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_57
    const/4 v0, 0x3

    if-ne p2, v0, :cond_6c

    .line 2522
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;

    move-result-object v0

    .line 2523
    .local v0, "service":Lcom/android/server/pm/pkg/component/ParsedService;
    if-eqz v0, :cond_6a

    .line 2524
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedService;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_6a

    goto :goto_6b

    :cond_6a
    move v2, v3

    .line 2523
    :goto_6b
    return v2

    .line 2525
    .end local v0    # "service":Lcom/android/server/pm/pkg/component/ParsedService;
    :cond_6c
    const/4 v0, 0x4

    if-ne p2, v0, :cond_81

    .line 2526
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedProvider;

    move-result-object v0

    .line 2527
    .local v0, "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    if-eqz v0, :cond_7f

    .line 2528
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_7f

    goto :goto_80

    :cond_7f
    move v2, v3

    .line 2527
    :goto_80
    return v2

    .line 2529
    .end local v0    # "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    :cond_81
    if-nez p2, :cond_88

    .line 2530
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 2532
    :cond_88
    return v3
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 2547
    invoke-virtual {p1}, Landroid/content/Intent;->isImplicitImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final isInstallDisabledForPackage(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 4036
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4037
    const-string/jumbo v2, "no_install_unknown_sources_globally"

    invoke-virtual {v0, v2, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_27

    .line 4041
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 4042
    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;->getPackageTrustedToInstallApps(Ljava/lang/String;I)I

    move-result v0

    .line 4043
    .local v0, "isTrusted":I
    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1

    .line 4045
    .end local v0    # "isTrusted":I
    :cond_26
    return v2

    .line 4039
    :cond_27
    :goto_27
    return v1
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2553
    .local v6, "callingUid":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "isInstantApp"

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2556
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 2564
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected isInstantAppInternalBody(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 2569
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2570
    invoke-direct {p0, p3}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p3

    .line 2572
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2573
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2575
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2576
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2578
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    .line 2577
    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2f
    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    move v2, v1

    .line 2579
    .local v2, "returnAllowed":Z
    :goto_32
    if-eqz v2, :cond_3d

    .line 2580
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v1

    return v1

    .line 2582
    :cond_3d
    return v1
.end method

.method protected isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .param p4, "skipPackageCheck"    # Z
    .param p5, "flags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZJ)Z"
        }
    .end annotation

    .line 2628
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move v3, v2

    goto :goto_c

    :cond_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    .line 2629
    .local v3, "count":I
    :goto_c
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_d
    if-ge v4, v3, :cond_83

    .line 2630
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2631
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2632
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 2633
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v7, :cond_7e

    .line 2635
    iget-boolean v8, v5, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    const-string v14, "PackageManager"

    if-nez v8, :cond_57

    .line 2636
    iget-object v8, v0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v9, v7

    move-object/from16 v10, p1

    move-wide/from16 v11, p5

    move/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 2638
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v8, :cond_56

    .line 2639
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DENY instant app; pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", approved"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_56
    return v2

    .line 2645
    :cond_57
    move/from16 v8, p3

    invoke-interface {v7, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v9

    if-eqz v9, :cond_80

    .line 2646
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v9, :cond_7d

    .line 2647
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DENY instant app installed; pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_7d
    return v2

    .line 2633
    :cond_7e
    move/from16 v8, p3

    .line 2629
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_83
    move/from16 v8, p3

    .line 2655
    .end local v4    # "n":I
    const/4 v2, 0x1

    return v2
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3730
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 3731
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3732
    .local v0, "callingUid":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "is package available"

    move-object v2, p0

    move v3, v0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3735
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3736
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_5c

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 3737
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3738
    return v1

    .line 3740
    :cond_2b
    invoke-interface {v2, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 3741
    .local v3, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v3, :cond_5c

    .line 3744
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3745
    invoke-static {v3}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_47

    .line 3746
    return v5

    .line 3748
    :cond_47
    invoke-interface {v2, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 3749
    .local v4, "ownerUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v4, :cond_54

    invoke-static {v4}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v1, v5

    :cond_54
    return v1

    .line 3752
    .end local v4    # "ownerUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_55
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    return v1

    .line 3755
    .end local v3    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_5c
    return v1
.end method

.method public isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .line 5381
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5382
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5383
    return v2

    .line 5385
    :cond_c
    if-eqz p1, :cond_75

    if-nez p2, :cond_11

    goto :goto_75

    .line 5388
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5389
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_44

    .line 5390
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5391
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5390
    invoke-virtual {p0, v3, v0, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_44

    .line 5395
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object v3

    .line 5396
    .local v3, "ksh":Landroid/os/IBinder;
    instance-of v4, v3, Lcom/android/server/pm/KeySetHandle;

    if-eqz v4, :cond_43

    .line 5397
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 5398
    .local v2, "ksms":Lcom/android/server/pm/KeySetManagerService;
    move-object v4, v3

    check-cast v4, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result v4

    return v4

    .line 5400
    .end local v2    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_43
    return v2

    .line 5392
    .end local v3    # "ksh":Landroid/os/IBinder;
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeySet requested for unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5386
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_75
    :goto_75
    return v2
.end method

.method public isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .line 5405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5406
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5407
    return v2

    .line 5409
    :cond_c
    if-eqz p1, :cond_75

    if-nez p2, :cond_11

    goto :goto_75

    .line 5412
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5413
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_44

    .line 5414
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5415
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5414
    invoke-virtual {p0, v3, v0, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_44

    .line 5419
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object v3

    .line 5420
    .local v3, "ksh":Landroid/os/IBinder;
    instance-of v4, v3, Lcom/android/server/pm/KeySetHandle;

    if-eqz v4, :cond_43

    .line 5421
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 5422
    .local v2, "ksms":Lcom/android/server/pm/KeySetManagerService;
    move-object v4, v3

    check-cast v4, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result v4

    return v4

    .line 5424
    .end local v2    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_43
    return v2

    .line 5416
    .end local v3    # "ksh":Landroid/os/IBinder;
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeySet requested for unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5410
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_75
    :goto_75
    return v2
.end method

.method public isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5078
    .local v6, "callingUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPackageSuspendedForUser for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5080
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5081
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_36

    invoke-virtual {p0, v0, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_36

    .line 5084
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v1

    return v1

    .line 5082
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown target package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final isSameProfileGroup(II)Z
    .registers 6
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 2695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2697
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 2699
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2697
    return v2

    .line 2699
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2700
    throw v2
.end method

.method public isSuspendingAnyPackages(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5090
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5091
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 5092
    .local v2, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 5093
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 5094
    const/4 v0, 0x1

    return v0

    .line 5096
    .end local v1    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_2e
    goto :goto_c

    .line 5097
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public isUidPrivileged(I)Z
    .registers 11
    .param p1, "uid"    # I

    .line 4630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4631
    return v1

    .line 4633
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4634
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4636
    :cond_16
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4637
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 4638
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_45

    .line 4639
    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 4640
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 4641
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v4

    .line 4642
    .local v4, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 4643
    .local v5, "numPackages":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_31
    if-ge v6, v5, :cond_44

    .line 4644
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4645
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->isPrivileged()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 4646
    const/4 v1, 0x1

    return v1

    .line 4643
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v4    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v5    # "numPackages":I
    .end local v6    # "index":I
    :cond_44
    goto :goto_51

    .line 4649
    :cond_45
    instance-of v3, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_51

    .line 4650
    move-object v1, v2

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4651
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v3

    return v3

    .line 4649
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_51
    :goto_51
    nop

    .line 4653
    return v1
.end method

.method public queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 23
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # J
    .param p5, "metaDataKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 4941
    move-object/from16 v8, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 4942
    .local v9, "callingUid":I
    if-eqz p1, :cond_d

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_11

    .line 4943
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    :goto_11
    move v10, v0

    .line 4944
    .local v10, "userId":I
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4945
    :cond_1f
    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1, v10}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v11

    .line 4946
    .end local p3    # "flags":J
    .local v11, "flags":J
    const/4 v13, 0x0

    .line 4947
    .local v13, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p2

    move-wide v5, v11

    move v7, v10

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/util/List;

    move-result-object v6

    .line 4949
    .local v6, "matchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-nez v6, :cond_3a

    const/4 v0, 0x0

    goto :goto_3e

    :cond_3a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_3e
    move v7, v0

    .line 4950
    .local v7, "listSize":I
    const/4 v0, 0x0

    move-object v14, v13

    move v13, v0

    .local v13, "i":I
    .local v14, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_42
    if-ge v13, v7, :cond_89

    .line 4951
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/ProviderInfo;

    .line 4952
    .local v15, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 4953
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4952
    invoke-static {v0, v15, v11, v12, v10}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 4955
    goto :goto_86

    .line 4957
    :cond_5a
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 4958
    .local v16, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4960
    .local v3, "component":Landroid/content/ComponentName;
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 4962
    goto :goto_86

    .line 4964
    :cond_79
    if-nez v14, :cond_83

    .line 4965
    new-instance v0, Ljava/util/ArrayList;

    sub-int v1, v7, v13

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    .line 4967
    :cond_83
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4950
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v15    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v16    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_86
    add-int/lit8 v13, v13, 0x1

    goto :goto_42

    .line 4970
    .end local v13    # "i":I
    :cond_89
    if-eqz v14, :cond_96

    .line 4971
    sget-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4972
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v14}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 4975
    :cond_96
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 21
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .line 4999
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5000
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 5001
    .local v9, "callingUserId":I
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 5002
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {v0, v10, v2, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 5003
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    return-object v3

    .line 5006
    :cond_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 5008
    .local v11, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/InstrumentationInfo;>;"
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    .line 5009
    .local v12, "numInstrumentations":I
    const/4 v3, 0x0

    move v13, v3

    .local v13, "index":I
    :goto_2b
    if-ge v13, v12, :cond_6b

    .line 5010
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v13}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 5011
    .local v14, "p":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    if-eqz v1, :cond_42

    .line 5012
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 5013
    :cond_42
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 5014
    .local v15, "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v15}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5015
    .local v16, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v0, v15}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v17

    .line 5016
    .local v17, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v16, :cond_68

    .line 5017
    move/from16 v8, p2

    int-to-long v5, v8

    move-object v3, v14

    move-object/from16 v4, v16

    move v7, v9

    move-object/from16 v8, v17

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;JILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v3

    .line 5019
    .local v3, "ii":Landroid/content/pm/InstrumentationInfo;
    if-eqz v3, :cond_68

    .line 5020
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5009
    .end local v3    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v14    # "p":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_68
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b

    .line 5026
    .end local v13    # "index":I
    :cond_6b
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v11}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 621
    nop

    .line 622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 621
    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 614
    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;
    .registers 44
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "privateResolveFlags"    # J
    .param p7, "filterCallingUid"    # I
    .param p8, "userId"    # I
    .param p9, "resolveForStart"    # Z
    .param p10, "allowDynamicSplits"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JJIIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 498
    move-object/from16 v11, p0

    move/from16 v12, p7

    move/from16 v13, p8

    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 499
    :cond_13
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v14

    .line 500
    .local v14, "instantAppPkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activities"

    move-object/from16 v0, p0

    move/from16 v2, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v15

    .line 504
    .local v15, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 505
    .local v0, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 506
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_48

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 508
    move-object/from16 v0, p1

    .line 509
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 510
    .end local p1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v17, v0

    move-object v10, v1

    move-object/from16 v16, v2

    goto :goto_4d

    .line 515
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_48
    move-object/from16 v16, p1

    move-object/from16 v17, v0

    move-object v10, v1

    .end local v0    # "originalIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v10, "comp":Landroid/content/ComponentName;
    .local v16, "intent":Landroid/content/Intent;
    .local v17, "originalIntent":Landroid/content/Intent;
    :goto_4d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/miui/xspace/XSpaceManagerStub;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 516
    const-wide/32 v0, 0x402000

    or-long v0, p3, v0

    move-wide v8, v0

    .end local p3    # "flags":J
    .local v0, "flags":J
    goto :goto_60

    .line 515
    .end local v0    # "flags":J
    .restart local p3    # "flags":J
    :cond_5e
    move-wide/from16 v8, p3

    .line 519
    .end local p3    # "flags":J
    .local v8, "flags":J
    :goto_60
    const/16 v18, 0x0

    const/4 v7, 0x1

    if-nez v10, :cond_6b

    if-eqz v15, :cond_68

    goto :goto_6b

    :cond_68
    move/from16 v6, v18

    goto :goto_6c

    :cond_6b
    :goto_6b
    move v6, v7

    .line 521
    :goto_6c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p8

    move-object/from16 v3, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v19

    .line 519
    move-wide v1, v8

    move/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move-wide/from16 p3, v8

    move v8, v7

    .end local v8    # "flags":J
    .restart local p3    # "flags":J
    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide v6

    .line 523
    .end local p3    # "flags":J
    .local v6, "flags":J
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    .line 524
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v20, 0x0

    .line 525
    .local v20, "skipPostResolution":Z
    if-eqz v10, :cond_170

    .line 526
    invoke-virtual {v11, v10, v6, v7, v13}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 527
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_16b

    .line 532
    const-wide/32 v0, 0x800000

    and-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a3

    move v0, v8

    goto :goto_a5

    :cond_a3
    move/from16 v0, v18

    :goto_a5
    move/from16 v21, v0

    .line 534
    .local v21, "matchInstantApp":Z
    const-wide/32 v0, 0x1000000

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b1

    move v0, v8

    goto :goto_b3

    :cond_b1
    move/from16 v0, v18

    :goto_b3
    move/from16 v22, v0

    .line 536
    .local v22, "matchVisibleToInstantAppOnly":Z
    const-wide/32 v0, 0x2000000

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_bf

    move v0, v8

    goto :goto_c1

    :cond_bf
    move/from16 v0, v18

    :goto_c1
    move/from16 v23, v0

    .line 538
    .local v23, "matchExplicitlyVisibleOnly":Z
    if-eqz v14, :cond_c7

    move v0, v8

    goto :goto_c9

    :cond_c7
    move/from16 v0, v18

    :goto_c9
    move/from16 v24, v0

    .line 540
    .local v24, "isCallerInstantApp":Z
    nop

    .line 541
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 542
    .local v25, "isTargetSameInstantApp":Z
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_de

    move v0, v8

    goto :goto_e0

    :cond_de
    move/from16 v0, v18

    :goto_e0
    move/from16 v26, v0

    .line 545
    .local v26, "isTargetInstantApp":Z
    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_eb

    move v0, v8

    goto :goto_ed

    :cond_eb
    move/from16 v0, v18

    :goto_ed
    move/from16 v27, v0

    .line 547
    .local v27, "isTargetVisibleToInstantApp":Z
    if-eqz v27, :cond_fa

    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_fa

    move v0, v8

    goto :goto_fc

    :cond_fa
    move/from16 v0, v18

    :goto_fc
    move/from16 v28, v0

    .line 551
    .local v28, "isTargetExplicitlyVisibleToInstantApp":Z
    if-eqz v27, :cond_108

    if-eqz v23, :cond_105

    if-nez v28, :cond_105

    goto :goto_108

    :cond_105
    move/from16 v0, v18

    goto :goto_109

    :cond_108
    :goto_108
    move v0, v8

    :goto_109
    move/from16 v29, v0

    .line 555
    .local v29, "isTargetHiddenFromInstantApp":Z
    if-nez v25, :cond_11b

    if-nez v21, :cond_113

    if-nez v24, :cond_113

    if-nez v26, :cond_119

    :cond_113
    if-eqz v22, :cond_11b

    if-eqz v24, :cond_11b

    if-eqz v29, :cond_11b

    :cond_119
    move v0, v8

    goto :goto_11d

    :cond_11b
    move/from16 v0, v18

    :goto_11d
    move/from16 v30, v0

    .line 560
    .local v30, "blockInstantResolution":Z
    if-nez p9, :cond_138

    if-nez v26, :cond_138

    if-nez v24, :cond_138

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 563
    invoke-virtual {v11, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 562
    invoke-virtual {v11, v0, v12, v13}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_138

    move/from16 v18, v8

    goto :goto_139

    :cond_138
    nop

    .line 565
    .local v18, "blockNormalResolution":Z
    :goto_139
    if-nez v30, :cond_168

    if-nez v18, :cond_168

    .line 566
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v5, v0

    .line 567
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    .line 569
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 571
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    .line 570
    move-object v2, v8

    move-object/from16 v4, v16

    move-object/from16 v19, v5

    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .local v19, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v5, p2

    move-wide/from16 v31, v6

    .end local v6    # "flags":J
    .local v31, "flags":J
    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    move-object/from16 v19, v8

    goto :goto_16d

    .line 565
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "flags":J
    .restart local v6    # "flags":J
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_168
    move-wide/from16 v31, v6

    .end local v6    # "flags":J
    .restart local v31    # "flags":J
    goto :goto_16d

    .line 527
    .end local v18    # "blockNormalResolution":Z
    .end local v21    # "matchInstantApp":Z
    .end local v22    # "matchVisibleToInstantAppOnly":Z
    .end local v23    # "matchExplicitlyVisibleOnly":Z
    .end local v24    # "isCallerInstantApp":Z
    .end local v25    # "isTargetSameInstantApp":Z
    .end local v26    # "isTargetInstantApp":Z
    .end local v27    # "isTargetVisibleToInstantApp":Z
    .end local v28    # "isTargetExplicitlyVisibleToInstantApp":Z
    .end local v29    # "isTargetHiddenFromInstantApp":Z
    .end local v30    # "blockInstantResolution":Z
    .end local v31    # "flags":J
    .restart local v6    # "flags":J
    :cond_16b
    move-wide/from16 v31, v6

    .line 575
    .end local v6    # "flags":J
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v31    # "flags":J
    :goto_16d
    move-object/from16 v18, v10

    goto :goto_1c6

    .line 576
    .end local v31    # "flags":J
    .restart local v6    # "flags":J
    :cond_170
    move-wide/from16 v31, v6

    .line 577
    .end local v6    # "flags":J
    .restart local v31    # "flags":J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-wide/from16 v3, v31

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object v9, v15

    move-object/from16 v18, v10

    .end local v10    # "comp":Landroid/content/ComponentName;
    .local v18, "comp":Landroid/content/ComponentName;
    move-object v10, v14

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v9

    .line 580
    .local v9, "lockedResult":Lcom/android/server/pm/QueryIntentActivitiesResult;
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    if-eqz v0, :cond_195

    .line 581
    const/16 v20, 0x1

    .line 582
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    move-object/from16 v19, v0

    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1c6

    .line 584
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_195
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    if-eqz v0, :cond_1b7

    .line 585
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 586
    .local v10, "callingPkgName":Ljava/lang/String;
    invoke-virtual {v11, v10, v13}, Lcom/android/server/pm/ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v21

    .line 587
    .local v21, "isRequesterInstantApp":Z
    iget-object v1, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v4, v31

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ComputerEngine;->maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 591
    .end local v10    # "callingPkgName":Ljava/lang/String;
    .end local v21    # "isRequesterInstantApp":Z
    :cond_1b7
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    if-eqz v0, :cond_1c2

    .line 592
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 594
    :cond_1c2
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v19, v0

    .line 598
    .end local v9    # "lockedResult":Lcom/android/server/pm/QueryIntentActivitiesResult;
    :goto_1c6
    if-eqz v17, :cond_1dc

    .line 600
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 601
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    .line 600
    move-object/from16 v2, v19

    move-object/from16 v4, v17

    move-object/from16 v5, p2

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    .line 605
    :cond_1dc
    if-eqz v20, :cond_1e1

    move-object/from16 v0, v19

    goto :goto_1f4

    :cond_1e1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v14

    move/from16 v3, p10

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p8

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    :goto_1f4
    return-object v0
.end method

.method public queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;
    .registers 35
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I
    .param p7, "resolveForStart"    # Z
    .param p8, "allowDynamicSplits"    # Z
    .param p9, "pkgName"    # Ljava/lang/String;
    .param p10, "instantAppPkgName"    # Ljava/lang/String;

    .line 736
    move-object/from16 v8, p0

    move/from16 v9, p6

    move-object/from16 v10, p9

    const/4 v11, 0x0

    .line 737
    .local v11, "sortResult":Z
    const/4 v12, 0x0

    .line 738
    .local v12, "addInstant":Z
    const/4 v13, 0x0

    .line 739
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v10, :cond_139

    .line 740
    nop

    .line 741
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual {v8, v14, v15, v9}, Lcom/android/server/pm/ComputerEngine;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .line 743
    .local v16, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->querySkipCurrentProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 745
    .local v7, "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x1

    if-eqz v7, :cond_53

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 747
    .local v6, "xpResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    new-instance v5, Lcom/android/server/pm/QueryIntentActivitiesResult;

    .line 750
    invoke-direct {v8, v6, v9}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 749
    move-object/from16 v0, p0

    move-object/from16 v2, p10

    move/from16 v3, p8

    move/from16 v4, p5

    move/from16 v17, v11

    move-object v11, v5

    .end local v11    # "sortResult":Z
    .local v17, "sortResult":Z
    move/from16 v5, p7

    move-object/from16 v18, v6

    .end local v6    # "xpResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v18, "xpResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move/from16 v6, p6

    move-object/from16 v19, v7

    .end local v7    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .local v19, "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    .line 748
    return-object v11

    .line 756
    .end local v17    # "sortResult":Z
    .end local v18    # "xpResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "sortResult":Z
    :cond_53
    move-object/from16 v19, v7

    move/from16 v17, v11

    .end local v7    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "sortResult":Z
    .restart local v17    # "sortResult":Z
    .restart local v19    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move v11, v6

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0, v9}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v13

    .line 758
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v3, p6

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v12

    .line 761
    invoke-direct {v8, v13}, Lcom/android/server/pm/ComputerEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v18

    .line 762
    .local v18, "hasNonNegativePriorityResult":Z
    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryCrossProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZ)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v7

    .line 765
    .local v7, "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 766
    const/16 v20, 0x0

    .line 767
    .local v20, "generalXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-virtual {v8, v9}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 768
    .local v6, "parent":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_b3

    .line 769
    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v21, v5

    move/from16 v5, p6

    move-object/from16 v22, v6

    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    .local v22, "parent":Landroid/content/pm/UserInfo;
    move/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v20

    goto :goto_b5

    .line 768
    .end local v22    # "parent":Landroid/content/pm/UserInfo;
    .restart local v6    # "parent":Landroid/content/pm/UserInfo;
    :cond_b3
    move-object/from16 v22, v6

    .line 776
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    .restart local v22    # "parent":Landroid/content/pm/UserInfo;
    :goto_b5
    if-eqz v20, :cond_ba

    move-object/from16 v0, v20

    goto :goto_bb

    :cond_ba
    move-object v0, v7

    :goto_bb
    move-object v6, v0

    .line 778
    .local v6, "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-nez v12, :cond_10f

    .line 779
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e9

    if-eqz v6, :cond_e9

    .line 783
    iget-object v0, v6, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance v11, Lcom/android/server/pm/QueryIntentActivitiesResult;

    .line 785
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p10

    move/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v21, v6

    .end local v6    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v21, "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    move/from16 v6, p6

    move/from16 v23, v12

    move-object v12, v7

    .end local v7    # "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v23, "addInstant":Z
    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    .line 784
    return-object v11

    .line 779
    .end local v21    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v23    # "addInstant":Z
    .restart local v6    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v7    # "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "addInstant":Z
    :cond_e9
    move-object/from16 v21, v6

    move/from16 v23, v12

    move-object v12, v7

    .line 788
    .end local v6    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v7    # "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v21    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v23    # "addInstant":Z
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v11, :cond_114

    if-nez v21, :cond_114

    .line 792
    new-instance v11, Lcom/android/server/pm/QueryIntentActivitiesResult;

    .line 793
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p10

    move/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p6

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    .line 792
    return-object v11

    .line 778
    .end local v21    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v23    # "addInstant":Z
    .restart local v6    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v7    # "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "addInstant":Z
    :cond_10f
    move-object/from16 v21, v6

    move/from16 v23, v12

    move-object v12, v7

    .line 801
    .end local v6    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v7    # "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v21    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v23    # "addInstant":Z
    :cond_114
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object v4, v13

    move-object/from16 v5, v21

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->filterCandidatesWithDomainPreferredActivitiesLPr(Landroid/content/Intent;JLjava/util/List;Lcom/android/server/pm/CrossProfileDomainInfo;I)Ljava/util/List;

    move-result-object v13

    .line 803
    const/4 v0, 0x1

    .line 804
    .end local v17    # "sortResult":Z
    .end local v20    # "generalXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v21    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v22    # "parent":Landroid/content/pm/UserInfo;
    .local v0, "sortResult":Z
    move v11, v0

    goto :goto_135

    .line 807
    .end local v0    # "sortResult":Z
    .end local v23    # "addInstant":Z
    .restart local v7    # "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "addInstant":Z
    .restart local v17    # "sortResult":Z
    :cond_126
    move/from16 v23, v12

    move-object v12, v7

    .end local v7    # "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v23    # "addInstant":Z
    if-eqz v12, :cond_133

    .line 808
    iget-object v0, v12, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    const/4 v0, 0x1

    move v11, v0

    .end local v17    # "sortResult":Z
    .restart local v0    # "sortResult":Z
    goto :goto_135

    .line 807
    .end local v0    # "sortResult":Z
    .restart local v17    # "sortResult":Z
    :cond_133
    move/from16 v11, v17

    .line 812
    .end local v12    # "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v16    # "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local v17    # "sortResult":Z
    .end local v18    # "hasNonNegativePriorityResult":Z
    .end local v19    # "skipProfileInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "sortResult":Z
    :goto_135
    move/from16 v12, v23

    goto/16 :goto_19f

    .line 813
    .end local v23    # "addInstant":Z
    .local v12, "addInstant":Z
    :cond_139
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v17, v11

    .end local v11    # "sortResult":Z
    .restart local v17    # "sortResult":Z
    const/16 v0, 0x3e8

    .line 814
    invoke-virtual {v8, v10, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 815
    .local v11, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v13, 0x0

    .line 816
    if-eqz v11, :cond_178

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;

    move-result-object v0

    if-eqz v0, :cond_178

    if-nez p7, :cond_159

    .line 817
    move/from16 v7, p5

    invoke-virtual {v8, v11, v7, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_178

    goto :goto_15b

    .line 816
    :cond_159
    move/from16 v7, p5

    .line 818
    :goto_15b
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 819
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getActivities()Ljava/util/List;

    move-result-object v6

    .line 818
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0, v9}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    .line 822
    :cond_178
    if-eqz v13, :cond_184

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_181

    goto :goto_184

    :cond_181
    move/from16 v11, v17

    goto :goto_19f

    .line 825
    :cond_184
    :goto_184
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p6

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v12

    .line 827
    if-nez v13, :cond_19d

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    move/from16 v11, v17

    goto :goto_19f

    .line 827
    :cond_19d
    move/from16 v11, v17

    .line 832
    .end local v17    # "sortResult":Z
    .local v11, "sortResult":Z
    :goto_19f
    new-instance v0, Lcom/android/server/pm/QueryIntentActivitiesResult;

    invoke-direct {v0, v11, v12, v13}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(ZZLjava/util/List;)V

    return-object v0
.end method

.method public final queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;
    .registers 35
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .param p7, "includeInstantApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 629
    move-object/from16 v8, p0

    move/from16 v9, p5

    move/from16 v10, p6

    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 630
    :cond_13
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent receivers"

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 635
    invoke-virtual {v8, v10}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v11

    .line 636
    .local v11, "instantAppPkgName":Ljava/lang/String;
    const/4 v6, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v12

    .line 638
    .end local p3    # "flags":J
    .local v12, "flags":J
    const/4 v0, 0x0

    .line 639
    .local v0, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 640
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_4d

    .line 641
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 642
    move-object/from16 v0, p1

    .line 643
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 644
    .end local p1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v15, v0

    move-object v7, v1

    move-object v14, v2

    goto :goto_51

    .line 647
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_4d
    move-object/from16 v14, p1

    move-object v15, v0

    move-object v7, v1

    .end local v0    # "originalIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v7, "comp":Landroid/content/ComponentName;
    .local v14, "intent":Landroid/content/Intent;
    .local v15, "originalIntent":Landroid/content/Intent;
    :goto_51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 648
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_107

    .line 649
    invoke-virtual {v8, v7, v12, v13, v9}, Lcom/android/server/pm/ComputerEngine;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    .line 650
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_102

    .line 655
    const-wide/32 v0, 0x800000

    and-long/2addr v0, v12

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6b

    move v0, v4

    goto :goto_6c

    :cond_6b
    move v0, v1

    :goto_6c
    move/from16 v17, v0

    .line 657
    .local v17, "matchInstantApp":Z
    const-wide/32 v18, 0x1000000

    and-long v18, v12, v18

    cmp-long v0, v18, v2

    if-eqz v0, :cond_79

    move v0, v4

    goto :goto_7a

    :cond_79
    move v0, v1

    :goto_7a
    move/from16 v18, v0

    .line 659
    .local v18, "matchVisibleToInstantAppOnly":Z
    if-eqz v11, :cond_80

    move v0, v4

    goto :goto_81

    :cond_80
    move v0, v1

    :goto_81
    move/from16 v19, v0

    .line 661
    .local v19, "isCallerInstantApp":Z
    nop

    .line 662
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 663
    .local v20, "isTargetSameInstantApp":Z
    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_96

    move v0, v4

    goto :goto_97

    :cond_96
    move v0, v1

    :goto_97
    move/from16 v21, v0

    .line 666
    .local v21, "isTargetInstantApp":Z
    iget v0, v6, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-nez v0, :cond_a2

    move v0, v4

    goto :goto_a3

    :cond_a2
    move v0, v1

    :goto_a3
    move/from16 v22, v0

    .line 668
    .local v22, "isTargetHiddenFromInstantApp":Z
    if-nez v20, :cond_b5

    if-nez v17, :cond_ad

    if-nez v19, :cond_ad

    if-nez v21, :cond_b3

    :cond_ad
    if-eqz v18, :cond_b5

    if-eqz v19, :cond_b5

    if-eqz v22, :cond_b5

    :cond_b3
    move v0, v4

    goto :goto_b6

    :cond_b5
    move v0, v1

    :goto_b6
    move/from16 v23, v0

    .line 674
    .local v23, "blockInstantResolution":Z
    if-nez v21, :cond_ce

    if-nez v19, :cond_ce

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x3e8

    .line 676
    invoke-virtual {v8, v0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 675
    invoke-virtual {v8, v0, v10, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_ce

    move v1, v4

    goto :goto_cf

    :cond_ce
    nop

    :goto_cf
    move/from16 v24, v1

    .line 678
    .local v24, "blockNormalResolution":Z
    if-nez v23, :cond_ff

    if-nez v24, :cond_ff

    .line 679
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v5, v0

    .line 680
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 682
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 684
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    .line 683
    move-object v2, v4

    move-object/from16 v16, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v4, v14

    move-object/from16 v25, v5

    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .local v25, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v5, p2

    move-object/from16 v26, v6

    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .local v26, "si":Landroid/content/pm/ServiceInfo;
    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_104

    .line 678
    .end local v25    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v26    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    :cond_ff
    move-object/from16 v26, v6

    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v26    # "si":Landroid/content/pm/ServiceInfo;
    goto :goto_104

    .line 650
    .end local v17    # "matchInstantApp":Z
    .end local v18    # "matchVisibleToInstantAppOnly":Z
    .end local v19    # "isCallerInstantApp":Z
    .end local v20    # "isTargetSameInstantApp":Z
    .end local v21    # "isTargetInstantApp":Z
    .end local v22    # "isTargetHiddenFromInstantApp":Z
    .end local v23    # "blockInstantResolution":Z
    .end local v24    # "blockNormalResolution":Z
    .end local v26    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    :cond_102
    move-object/from16 v26, v6

    .line 688
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    :goto_104
    move-object/from16 v17, v7

    goto :goto_118

    .line 689
    :cond_107
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move-wide v3, v12

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v17, v7

    .end local v7    # "comp":Landroid/content/ComponentName;
    .local v17, "comp":Landroid/content/ComponentName;
    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 693
    :goto_118
    if-eqz v15, :cond_12d

    .line 695
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 696
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    .line 695
    move-object/from16 v2, v16

    move-object v4, v15

    move-object/from16 v5, p2

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    .line 700
    :cond_12d
    return-object v16
.end method

.method protected queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .param p7, "instantAppPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 707
    move-object v8, p0

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    .line 708
    .local v12, "pkgName":Ljava/lang/String;
    if-nez v12, :cond_27

    .line 709
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 711
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_22

    .line 712
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 714
    :cond_22
    invoke-direct {p0, v0, v11, v9, v10}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 717
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_27
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v12}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 718
    .local v13, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v13, :cond_50

    .line 719
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 720
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    .line 719
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 722
    .restart local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_4b

    .line 723
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 725
    :cond_4b
    invoke-direct {p0, v0, v11, v9, v10}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 728
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySyncProviders(ZLjava/util/List;Ljava/util/List;)V
    .registers 16
    .param p1, "safeMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4909
    .local p2, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4910
    return-void

    .line 4912
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4913
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 4914
    .local v7, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 4915
    .local v8, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move-object v3, v0

    move-object v4, v7

    move v5, p1

    move v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->querySyncProviders(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;ZI)V

    .line 4916
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v9, v1

    .local v9, "i":I
    :goto_2b
    if-ltz v9, :cond_5d

    .line 4917
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/content/pm/ProviderInfo;

    .line 4918
    .local v10, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 4919
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4921
    .local v4, "component":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x4

    move-object v1, p0

    move-object v2, v11

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v1

    if-nez v1, :cond_54

    .line 4923
    goto :goto_5a

    .line 4925
    :cond_54
    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4926
    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4916
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v10    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v11    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_5a
    add-int/lit8 v9, v9, -0x1

    goto :goto_2b

    .line 4928
    .end local v9    # "i":I
    :cond_5d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_66

    .line 4929
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4931
    :cond_66
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 4932
    invoke-interface {p3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4934
    :cond_6f
    return-void
.end method

.method protected resolveComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 4834
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4835
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 4836
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 4838
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    const/4 v2, 0x0

    .line 4839
    .local v2, "checkedGrants":Z
    if-eqz v0, :cond_30

    .line 4841
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq p4, v3, :cond_30

    .line 4842
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4843
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4844
    .local v3, "ugmInternal":Lcom/android/server/uri/UriGrantsManagerInternal;
    const/4 v4, 0x1

    .line 4845
    invoke-interface {v3, p5, v0, p4, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v2

    .line 4848
    .end local v3    # "ugmInternal":Lcom/android/server/uri/UriGrantsManagerInternal;
    :cond_30
    if-nez v2, :cond_61

    .line 4849
    const/4 v3, 0x1

    .line 4851
    .local v3, "enforceCrossUser":Z
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 4852
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    .line 4854
    .local v4, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 4855
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_54

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v6

    if-eqz v6, :cond_54

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v6, p4, :cond_54

    .line 4857
    const/4 v3, 0x0

    .line 4861
    .end local v4    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    if-eqz v3, :cond_61

    .line 4862
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "resolveContentProvider"

    move-object v4, p0

    move v5, p5

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4867
    .end local v3    # "enforceCrossUser":Z
    :cond_61
    if-nez v0, :cond_64

    .line 4868
    return-object v1

    .line 4870
    :cond_64
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4872
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {v3, v0, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result v4

    if-nez v4, :cond_71

    .line 4873
    return-object v1

    .line 4875
    :cond_71
    new-instance v7, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4877
    .local v7, "component":Landroid/content/ComponentName;
    const/4 v8, 0x4

    move-object v4, p0

    move-object v5, v3

    move v6, p5

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 4878
    return-object v1

    .line 4880
    :cond_86
    return-object v0
.end method

.method public final resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2131
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2132
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2134
    :cond_b
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 2205
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2206
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z
    .registers 14
    .param p1, "sus"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2796
    const/4 v0, 0x1

    .line 2797
    .local v0, "filterApp":Z
    nop

    .line 2798
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 2799
    .local v1, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "index":I
    :goto_c
    if-ltz v2, :cond_24

    if-eqz v0, :cond_24

    .line 2800
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move v6, p2

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v3

    and-int/2addr v0, v3

    .line 2799
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 2803
    .end local v2    # "index":I
    :cond_24
    return v0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 10
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2788
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z
    .registers 16
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I

    .line 2724
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2725
    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v0

    .line 2727
    .local v0, "clientAppUid":I
    if-eqz p1, :cond_18

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-static {p5, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne v0, v2, :cond_18

    .line 2728
    return v1

    .line 2732
    .end local v0    # "clientAppUid":I
    :cond_18
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2733
    invoke-direct {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    .line 2735
    :cond_22
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2736
    .local v0, "instantAppPkgName":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v0, :cond_2b

    move v3, v2

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    move v8, v3

    .line 2737
    .local v8, "callerIsInstantApp":Z
    if-nez p1, :cond_39

    .line 2739
    if-nez v8, :cond_37

    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_37
    move v1, v2

    :cond_38
    return v1

    .line 2742
    :cond_39
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2743
    return v1

    .line 2745
    :cond_44
    if-eqz v8, :cond_78

    .line 2747
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2748
    return v2

    .line 2752
    :cond_51
    if-eqz p3, :cond_6e

    .line 2753
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 2754
    invoke-virtual {v3, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 2755
    .local v3, "instrumentation":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    if-eqz v3, :cond_68

    .line 2756
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 2757
    return v1

    .line 2759
    :cond_68
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 2762
    .end local v3    # "instrumentation":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    :cond_6e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVisibleToInstantApps()Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 2764
    :cond_78
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 2766
    invoke-virtual {p0, p2, p5}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 2767
    return v1

    .line 2770
    :cond_89
    if-eqz p3, :cond_8c

    .line 2771
    return v2

    .line 2775
    :cond_8c
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2776
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    .line 2775
    invoke-virtual {v1, p5, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 2778
    :cond_9c
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2779
    .local v1, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v9

    .line 2780
    .local v9, "callingPs":Lcom/android/server/pm/SettingBase;
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object v3, p0

    move v4, p2

    move-object v5, v9

    move-object v6, p1

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v2

    return v2
.end method

.method public final updateFlagsForApplication(JI)J
    .registers 6
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2878
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForComponent(JI)J
    .registers 6
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2885
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForPackage(JI)J
    .registers 14
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2892
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    move v7, v0

    .line 2894
    .local v7, "isCallerSystemUser":Z
    const-wide/32 v3, 0x400000

    and-long v5, p1, v3

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_30

    .line 2897
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 2897
    const-string v6, "MATCH_ANY_USER flag requires INTERACT_ACROSS_USERS permission"

    move-object v0, p0

    move v1, v2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    goto :goto_44

    .line 2900
    :cond_30
    const-wide/16 v0, 0x2000

    and-long/2addr v0, p1

    cmp-long v0, v0, v8

    if-eqz v0, :cond_44

    if-eqz v7, :cond_44

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2902
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2909
    or-long v0, p1, v3

    .end local p1    # "flags":J
    .local v0, "flags":J
    goto :goto_45

    .line 2911
    .end local v0    # "flags":J
    .restart local p1    # "flags":J
    :cond_44
    :goto_44
    move-wide v0, p1

    .end local p1    # "flags":J
    .restart local v0    # "flags":J
    :goto_45
    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide v2

    return-wide v2
.end method

.method public final updateFlagsForResolve(JIIZZ)J
    .registers 15
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "wantInstantApps"    # Z
    .param p6, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 2929
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForResolve(JIIZZZ)J
    .registers 13
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "wantInstantApps"    # Z
    .param p6, "onlyExposedExplicitly"    # Z
    .param p7, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 2938
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->safeMode()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p7, :cond_c

    .line 2939
    :cond_8
    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    .line 2941
    :cond_c
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x800000

    if-eqz v0, :cond_21

    .line 2943
    if-eqz p6, :cond_1b

    .line 2944
    const-wide/32 v3, 0x2000000

    or-long/2addr p1, v3

    .line 2946
    :cond_1b
    const-wide/32 v3, 0x1000000

    or-long/2addr p1, v3

    .line 2947
    or-long/2addr p1, v1

    goto :goto_46

    .line 2949
    :cond_21
    and-long v0, p1, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    move v0, v1

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 2950
    .local v0, "wantMatchInstant":Z
    :goto_2e
    if-nez p5, :cond_3b

    if-eqz v0, :cond_39

    .line 2951
    invoke-virtual {p0, p4, p3}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_3b

    :cond_39
    move v1, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    nop

    .line 2952
    .local v1, "allowMatchInstant":Z
    :goto_3c
    const-wide/32 v2, -0x3000001

    and-long/2addr p1, v2

    .line 2954
    if-nez v1, :cond_46

    .line 2955
    const-wide/32 v2, -0x800001

    and-long/2addr p1, v2

    .line 2958
    .end local v0    # "wantMatchInstant":Z
    .end local v1    # "allowMatchInstant":Z
    :cond_46
    :goto_46
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final use()Lcom/android/server/pm/Computer;
    .registers 2

    .line 482
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 483
    return-object p0
.end method
