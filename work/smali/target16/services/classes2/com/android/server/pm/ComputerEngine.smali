.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.source "ComputerEngine.java"

# interfaces
.implements Lcom/android/server/pm/Computer;


# static fields
.field public static final sProviderInitOrderSorter:Ljava/util/Comparator;


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

.field public final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field public final mContext:Landroid/content/Context;

.field public final mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

.field public final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field public final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field public final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field public final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

.field public final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field public final mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field public final mLocalResolveComponentName:Landroid/content/ComponentName;

.field public final mPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field public final mService:Lcom/android/server/pm/PackageManagerService;

.field public final mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

.field public mUsed:I

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mVersion:I

.field public final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$ZsQO-GMd1VCddKx0WIWHtlgezQI(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .registers 2

    .line 378
    iget p0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 379
    iget p1, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    if-le p0, p1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-ge p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 377
    new-instance v0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V
    .registers 7

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 386
    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 440
    iput p2, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    .line 441
    new-instance p2, Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/ComputerEngine$Settings;-><init>(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/Settings;)V

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 442
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 443
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 444
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 445
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 446
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 447
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    .line 448
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 449
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 450
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 451
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 452
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 453
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 454
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 455
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 457
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 461
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 462
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 463
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 464
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 465
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 466
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 467
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 468
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 469
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 470
    new-instance v2, Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    invoke-direct {v2, v0, v3, p2, v1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DefaultAppProvider;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 475
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public static buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;
    .registers 6

    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_f

    .line 2879
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    :cond_f
    const-string p2, "UID "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2884
    const-string p0, " requires "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2885
    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_37

    .line 2887
    const-string p0, " or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_37

    .line 2890
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    const-string p0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    :cond_37
    const-string p0, " to access user "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2896
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 2949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_f

    .line 2951
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    :cond_f
    const-string p2, "UID "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2955
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2956
    const-string p0, " requires "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2d

    .line 2959
    const-string p0, " or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    :cond_2d
    const-string p0, " to access user "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2964
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 11

    .line 3214
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3215
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3216
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_ad

    .line 3217
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3218
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz p2, :cond_25

    .line 3219
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto/16 :goto_a9

    .line 3222
    :cond_25
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsFactory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    const-string v2, "ApplicationInfo: "

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3231
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v4, ""

    .line 3232
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3233
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3234
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_a9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 3236
    :cond_ad
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3237
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static isHomeIntent(Landroid/content/Intent;)Z
    .registers 3

    .line 3452
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "android.intent.category.HOME"

    .line 3453
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "android.intent.category.DEFAULT"

    .line 3454
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 14

    .line 3733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 3734
    const-string v5, "activitySupportsIntentAsUser"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3736
    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_15

    return p1

    .line 3740
    :cond_15
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p2}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    const/4 p5, 0x0

    if-nez p0, :cond_1f

    return p5

    .line 3744
    :cond_1f
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_2a

    return p5

    :cond_2a
    const/4 v4, 0x1

    const/4 v6, 0x1

    move v5, v2

    move v2, v1

    move-object v1, v3

    move-object v3, p2

    .line 3748
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p2

    if-eqz p2, :cond_37

    return p5

    :cond_37
    move p2, p5

    .line 3752
    :goto_38
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6e

    .line 3753
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 3754
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 3755
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v7, "PackageManager"

    move-object v3, p4

    .line 3754
    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_6a

    return p1

    :cond_6a
    add-int/lit8 p2, p2, 0x1

    move-object p4, v3

    goto :goto_38

    :cond_6e
    return p5
.end method

.method public final addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V
    .registers 15

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 4568
    :goto_3
    array-length v3, p3

    if-ge v1, v3, :cond_21

    .line 4569
    aget-object v3, p3, v1

    .line 4570
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default:0"

    invoke-interface {v4, v5, v3, v6, p7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    .line 4573
    aput-boolean v3, p4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 4576
    :cond_1c
    aput-boolean v0, p4, v1

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_21
    if-nez v2, :cond_24

    goto :goto_53

    .line 4582
    :cond_24
    invoke-virtual {p0, p2, p5, p6, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_53

    const-wide/16 v3, 0x1000

    and-long/2addr p5, v3

    const-wide/16 v3, 0x0

    cmp-long p2, p5, v3

    if-nez p2, :cond_50

    .line 4588
    array-length p2, p3

    if-ne v2, p2, :cond_39

    .line 4589
    iput-object p3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_50

    .line 4591
    :cond_39
    new-array p2, v2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move p2, v0

    .line 4593
    :goto_3e
    array-length p5, p3

    if-ge v0, p5, :cond_50

    .line 4594
    aget-boolean p5, p4, v0

    if-eqz p5, :cond_4d

    .line 4595
    iget-object p5, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object p6, p3, v0

    aput-object p6, p5, p2

    add-int/lit8 p2, p2, 0x1

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 4601
    :cond_50
    :goto_50
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    :goto_53
    return-void
.end method

.method public androidApplication()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 436
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public final applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v5, p6

    .line 1210
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {v1, v5}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move v10, v9

    goto :goto_18

    :cond_17
    const/4 v10, 0x0

    .line 1211
    :goto_18
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v11, v0

    :goto_1e
    if-ltz v11, :cond_117

    .line 1212
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1214
    iget-boolean v2, v0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-eqz v2, :cond_33

    if-eqz v10, :cond_33

    .line 1215
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2f
    move v8, v9

    :goto_30
    const/4 v9, 0x0

    goto/16 :goto_10e

    :cond_33
    if-eqz p3, :cond_aa

    .line 1219
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_aa

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_aa

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1222
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 1224
    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_51

    .line 1228
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2f

    :cond_51
    if-eqz v10, :cond_63

    .line 1231
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1233
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2f

    .line 1241
    :cond_63
    new-instance v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1243
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v4, p4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/pm/ComputerEngine;->findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v13

    .line 1245
    new-instance v12, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, v15, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    move-object/from16 v17, v3

    move-wide v15, v8

    invoke-direct/range {v12 .. v17}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v12, v2, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1251
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1256
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1257
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->resolveLabelResId()I

    move-result v3

    iput v3, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1258
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->resolveIconResId()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    const/4 v8, 0x1

    .line 1259
    iput-boolean v8, v2, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1260
    invoke-interface {v6, v11, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_aa
    move/from16 v4, p4

    move v8, v9

    if-nez v7, :cond_d0

    .line 1265
    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1266
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 1267
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    .line 1268
    invoke-virtual {v1, v0, v9}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez p5, :cond_10e

    move-object v4, v0

    .line 1269
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move/from16 v2, p4

    .line 1270
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_10b

    goto :goto_10e

    :cond_d0
    const/4 v9, 0x0

    .line 1274
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    goto :goto_10e

    :cond_dc
    if-eqz p5, :cond_f9

    .line 1278
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v1

    if-nez v1, :cond_ec

    .line 1279
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_f9

    .line 1280
    :cond_ec
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f9

    .line 1281
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_f9

    goto :goto_10e

    .line 1284
    :cond_f9
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10b

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1286
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_10b

    goto :goto_10e

    .line 1290
    :cond_10b
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_10e
    :goto_10e
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v1, p0

    move/from16 v5, p6

    move v9, v8

    goto/16 :goto_1e

    :cond_117
    return-object v6
.end method

.method public final applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 1297
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_d
    if-ltz v8, :cond_ba

    .line 1298
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ResolveInfo;

    if-nez v7, :cond_39

    .line 1300
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1301
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 1302
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1303
    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1304
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move/from16 v5, p3

    move/from16 v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_b6

    .line 1309
    :cond_39
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1311
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 1312
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v2, :cond_b6

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1313
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 1315
    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const-string v2, "PackageManager"

    if-nez v0, :cond_72

    .line 1316
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_6e

    .line 1317
    const-string v0, "No installer - not adding it to the ResolveInfolist"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_6e
    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b6

    .line 1325
    :cond_72
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_7b

    .line 1326
    const-string v0, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_7b
    new-instance v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1330
    new-instance v10, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v13, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v15, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v10, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1336
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1338
    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1339
    invoke-interface {v6, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b6

    :cond_a7
    if-nez v0, :cond_b3

    .line 1344
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-eqz v0, :cond_b3

    goto :goto_b6

    .line 1349
    :cond_b3
    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_b6
    :goto_b6
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_d

    :cond_ba
    return-object v6
.end method

.method public final areWebInstantAppsDisabled(I)Z
    .registers 2

    .line 2050
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 12

    .line 5457
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_18

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    .line 5458
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 16

    .line 5536
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5538
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachTo(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result p0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    const/4 p1, 0x1

    if-eqz p0, :cond_1a

    return p1

    .line 5542
    :cond_1a
    invoke-virtual {v1}, Landroid/content/Intent;->hasWebURI()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_54

    .line 5544
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 5545
    invoke-virtual {v0, v7}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    if-nez p3, :cond_2c

    return p2

    .line 5549
    :cond_2c
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v4, 0x0

    move v9, v3

    move-object v3, v2

    move v2, v9

    .line 5551
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v6

    move-object p4, v1

    move-object v8, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v9, v3

    move v3, v2

    move-wide v1, v9

    move v4, p0

    .line 5549
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v1

    const-wide/32 v3, 0x10000

    or-long/2addr v3, v1

    .line 5554
    iget v6, p3, Landroid/content/pm/UserInfo;->id:I

    move-object v1, p4

    move v5, v7

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object p0

    if-eqz p0, :cond_54

    return p1

    :cond_54
    return p2
.end method

.method public canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z
    .registers 13

    .line 5495
    array-length v0, p2

    .line 5496
    new-array v1, v0, [Z

    .line 5497
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_61

    .line 5500
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x0

    .line 5501
    const-string v8, "can package query"

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5504
    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    .line 5505
    new-array p3, v0, [Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz p0, :cond_2c

    .line 5508
    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_2c

    :cond_2a
    move v7, v2

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v7, v6

    :goto_2d
    move v8, v2

    :goto_2e
    if-nez v7, :cond_49

    if-ge v8, v0, :cond_49

    .line 5511
    aget-object v7, p2, v8

    invoke-virtual {v3, v7}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    aput-object v7, p3, v8

    if-eqz v7, :cond_45

    .line 5514
    invoke-virtual {v3, v7, v4, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_43

    goto :goto_45

    :cond_43
    move v7, v2

    goto :goto_46

    :cond_45
    :goto_45
    move v7, v6

    :goto_46
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_49
    if-nez v7, :cond_62

    .line 5523
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {v5, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    :goto_53
    if-ge v2, v0, :cond_61

    .line 5525
    aget-object p1, p3, v2

    invoke-virtual {v3, p1, p0, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    xor-int/2addr p1, v6

    aput-boolean p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_61
    :goto_61
    return-object v1

    .line 5518
    :cond_62
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p3, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and/or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5519
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public canQueryPackage(ILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    if-eqz p1, :cond_7e

    if-nez p2, :cond_7

    goto/16 :goto_7e

    .line 5400
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    return v2

    .line 5405
    :cond_15
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-wide/16 v4, 0x0

    .line 5407
    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 5406
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_42

    .line 5410
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p2

    if-nez p2, :cond_2f

    return v2

    .line 5414
    :cond_2f
    instance-of v1, p2, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_3b

    .line 5415
    check-cast p2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    :goto_39
    xor-int/2addr p0, v0

    return p0

    .line 5418
    :cond_3b
    check-cast p2, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    goto :goto_39

    .line 5425
    :cond_42
    instance-of p1, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_58

    .line 5426
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 5427
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_57

    return v0

    :cond_57
    return v2

    .line 5429
    :cond_58
    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 5431
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p1

    .line 5432
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_63
    if-ltz v1, :cond_7d

    .line 5433
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 5434
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v4, v3, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    return v0

    :cond_7a
    add-int/lit8 v1, v1, -0x1

    goto :goto_63

    :cond_7d
    return v2

    :cond_7e
    :goto_7e
    return v0
.end method

.method public canRequestPackageInstalls(Ljava/lang/String;IIZ)Z
    .registers 11

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v4, p3

    .line 3872
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p0

    if-eq v5, p0, :cond_32

    .line 3873
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_32

    .line 3874
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not own package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    const/16 p1, 0x3e8

    .line 3877
    invoke-virtual {v0, v1, v4, p1}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3c

    return p2

    .line 3880
    :cond_3c
    iget-object p1, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez p1, :cond_47

    return p2

    .line 3884
    :cond_47
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p3

    const/16 v2, 0x1a

    if-ge p3, v2, :cond_50

    return p2

    .line 3887
    :cond_50
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p1

    const-string p3, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 3892
    const-string p0, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    if-nez p4, :cond_66

    .line 3895
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 3893
    :cond_66
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3900
    :cond_6c
    invoke-virtual {v0, v1, p0, v4}, Lcom/android/server/pm/ComputerEngine;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final canViewInstantApps(II)Z
    .registers 6

    const/16 v0, 0x2710

    const/4 v1, 0x1

    if-ge p1, v0, :cond_6

    return v1

    .line 2071
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 2075
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIEW_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_38

    .line 2077
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 2079
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2d

    return v1

    .line 2083
    :cond_2d
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    if-eqz p2, :cond_38

    .line 2084
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_38

    return v1

    :cond_38
    return v2
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    .line 3660
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3661
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object p1

    .line 3664
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3665
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3666
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3667
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    :goto_19
    if-ltz v4, :cond_4f

    .line 3668
    aget-object v5, p1, v4

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 3671
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-eqz v6, :cond_4a

    .line 3673
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_4a

    if-nez v3, :cond_4a

    .line 3674
    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3677
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    .line 3676
    invoke-virtual {v7, v2, v8, v6}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v6

    if-eqz v6, :cond_48

    goto :goto_4a

    .line 3679
    :cond_48
    aget-object v5, p1, v4

    :cond_4a
    :goto_4a
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    :cond_4f
    return-object v1
.end method

.method public final checkIsolatedOwnerHasPermission(IZ)Z
    .registers 4

    .line 2252
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 2253
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p2, :cond_d

    .line 2254
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 2256
    :cond_d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_1e

    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    .line 2257
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method public checkPackageFrozen(Ljava/lang/String;)V
    .registers 3

    .line 5836
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    .line 5837
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to be frozen!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "PackageManager"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    return-void
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10

    .line 4154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4155
    const-string v5, "checkSignatures"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4158
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4159
    iget-object p1, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    const/4 p2, 0x0

    if-nez p0, :cond_22

    move-object p3, p2

    goto :goto_2a

    .line 4161
    :cond_22
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    :goto_2a
    if-nez p1, :cond_2d

    goto :goto_35

    .line 4163
    :cond_2d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    :goto_35
    const/4 v3, -0x4

    if-eqz p0, :cond_59

    if-eqz p3, :cond_59

    if-eqz p1, :cond_59

    if-nez p2, :cond_3f

    goto :goto_59

    .line 4167
    :cond_3f
    invoke-virtual {v0, p3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p3

    if-nez p3, :cond_59

    .line 4168
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2

    if-eqz p2, :cond_4c

    goto :goto_59

    .line 4171
    :cond_4c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    return p0

    :cond_59
    :goto_59
    return v3
.end method

.method public final checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .registers 5

    const/4 p0, 0x1

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    return p0

    :cond_6
    const/4 p0, -0x1

    return p0

    :cond_8
    if-nez p2, :cond_c

    const/4 p0, -0x2

    return p0

    .line 4240
    :cond_c
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_20

    .line 4247
    :cond_13
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    if-nez v1, :cond_21

    .line 4248
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    :goto_20
    return v0

    .line 4249
    :cond_21
    :goto_21
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 4250
    new-array v0, p0, [Landroid/content/pm/Signature;

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p1

    aget-object p1, p1, v1

    aput-object p1, v0, v1

    goto :goto_37

    .line 4251
    :cond_33
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 4252
    :goto_37
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 4253
    new-array p0, p0, [Landroid/content/pm/Signature;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p1

    aget-object p1, p1, v1

    aput-object p1, p0, v1

    goto :goto_4c

    .line 4254
    :cond_48
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 4255
    :goto_4c
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0

    return p0
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .registers 4

    .line 2704
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v0, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public checkUidSignatures(II)I
    .registers 5

    .line 4176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4177
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4179
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 4181
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p2

    if-eqz p1, :cond_1a

    if-nez p2, :cond_15

    goto :goto_1a

    .line 4185
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, -0x4

    return p0
.end method

.method public checkUidSignaturesForAllUsers(II)I
    .registers 10

    .line 4190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4191
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4192
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v4, 0x0

    .line 4193
    const-string v5, "checkUidSignaturesForAllUsers"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move p0, v2

    .line 4195
    const-string v5, "checkUidSignaturesForAllUsers"

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4198
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 4200
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p1

    if-eqz p0, :cond_2d

    if-nez p1, :cond_28

    goto :goto_2d

    .line 4204
    :cond_28
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, -0x4

    return p0
.end method

.method public final createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .registers 10

    .line 1786
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1790
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_54

    .line 1792
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_1b

    .line 1796
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    goto :goto_1d

    .line 1798
    :cond_1b
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 1800
    :goto_1d
    new-instance v2, Landroid/content/ComponentName;

    .line 1801
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    .line 1803
    invoke-virtual {p0, v2, v4, v5, p2}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoCrossProfile(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    const/4 v1, 0x1

    if-nez v3, :cond_35

    .line 1806
    iput p3, p0, Landroid/content/pm/ActivityInfo;->showUserIcon:I

    .line 1807
    iput-boolean v1, v0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1809
    :cond_35
    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 p0, 0x0

    .line 1810
    iput p0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1811
    iput p0, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1812
    iput p0, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1813
    iput-boolean v1, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1814
    new-instance p0, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1815
    iput p3, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 1816
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    return-object v0

    :catchall_54
    move-exception p0

    .line 1792
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1793
    throw p0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    .line 3635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3636
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object p1

    .line 3639
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3640
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3641
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3642
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    :goto_19
    if-ltz v4, :cond_51

    .line 3643
    aget-object v5, p1, v4

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 3645
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4a

    .line 3646
    invoke-interface {v5, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    .line 3647
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_45

    if-nez v3, :cond_45

    .line 3648
    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3651
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 3650
    invoke-virtual {v6, v2, v7, v8}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 3653
    :cond_45
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4c

    :cond_4a
    aget-object v5, p1, v4

    :goto_4c
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    :cond_51
    return-object v1
.end method

.method public dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 12

    .line 3033
    const-string v1, "Failed writing: "

    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3034
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3035
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    if-eqz v0, :cond_1b

    if-nez v2, :cond_1b

    .line 3038
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_1c8

    :cond_1b
    const/4 v3, 0x1

    if-eq p1, v3, :cond_1d9

    const/16 v4, 0x200

    if-eq p1, v4, :cond_1d1

    const/16 v4, 0x1000

    if-eq p1, v4, :cond_1c9

    const/16 v4, 0x2000

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq p1, v4, :cond_142

    const p2, 0x8000

    .line 3042
    const-string v1, "  "

    if-eq p1, p2, :cond_127

    const/high16 p2, 0x40000

    if-eq p1, p2, :cond_f3

    const/high16 p2, 0x80000

    if-eq p1, p2, :cond_9a

    const/high16 p2, 0x100000

    if-eq p1, p2, :cond_7b

    const/high16 p2, 0x2000000

    if-eq p1, p2, :cond_69

    const/high16 p2, 0x4000000

    if-eq p1, p2, :cond_49

    goto/16 :goto_1c8

    :cond_49
    if-nez v2, :cond_4d

    :goto_4b
    move-object v2, v6

    goto :goto_56

    .line 3087
    :cond_4d
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4b

    .line 3088
    :goto_56
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3089
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ComputerEngine;)V

    move-object v1, p3

    move-object v3, p4

    .line 3088
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V

    return-void

    :cond_69
    move-object p1, p3

    if-eqz v0, :cond_72

    .line 3157
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c8

    .line 3158
    :cond_72
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ApexManager;->dump(Ljava/io/PrintWriter;)V

    .line 3159
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_7b
    move-object p1, p3

    move-object p3, p4

    .line 3116
    new-instance p2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p2, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3117
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p3

    if-eqz p3, :cond_8b

    .line 3118
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3120
    :cond_8b
    const-string p1, "Dexopt state:"

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3122
    invoke-static {p2, p0, v0}, Lcom/android/server/pm/DexOptHelper;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V

    .line 3123
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :cond_9a
    move-object p1, p3

    move-object p3, p4

    .line 3135
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 3136
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3138
    :cond_a5
    new-instance p2, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 p3, 0x78

    invoke-direct {p2, p1, v1, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3139
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3140
    const-string p1, "Frozen packages:"

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3142
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_c5

    .line 3143
    const-string p0, "(none)"

    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ef

    .line 3145
    :cond_c5
    :goto_c5
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p1

    if-ge v5, p1, :cond_ef

    .line 3146
    const-string/jumbo p1, "package="

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3147
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v5}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3148
    const-string p1, ", refCounts="

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3149
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c5

    .line 3152
    :cond_ef
    :goto_ef
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :cond_f3
    move-object p1, p3

    move-object p3, p4

    .line 3096
    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3098
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p3

    if-eqz p3, :cond_103

    .line 3099
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3101
    :cond_103
    const-string p3, "Domain verification status:"

    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3104
    :try_start_10b
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 p4, -0x1

    .line 3105
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 3104
    invoke-interface {p3, p0, p2, v0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_115} :catch_116

    goto :goto_122

    :catch_116
    move-exception v0

    move-object p0, v0

    .line 3107
    const-string p3, "Failure printing domain verification information"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    const-string p1, "PackageManager"

    invoke-static {p1, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3110
    :goto_122
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto/16 :goto_1c8

    :cond_127
    move-object p1, p3

    move-object p3, p4

    .line 3045
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_132

    .line 3046
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3048
    :cond_132
    const-string p2, "Database versions:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    new-instance p2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p2, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void

    :cond_142
    move-object p1, p3

    move-object p3, p4

    .line 3063
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 3064
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p4

    .line 3065
    :try_start_14b
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_155
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14b .. :try_end_155} :catch_181
    .catch Ljava/lang/IllegalStateException; {:try_start_14b .. :try_end_155} :catch_17e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_155} :catch_17b

    .line 3067
    :try_start_155
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3068
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, v6, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3069
    const-string p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p4, p2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3071
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3072
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->isFullPreferred()Z

    move-result p2

    .line 3071
    invoke-virtual {p0, p4, v5, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V

    .line 3073
    invoke-interface {p4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 3074
    invoke-interface {p4}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_177
    .catchall {:try_start_155 .. :try_end_177} :catchall_184

    .line 3075
    :try_start_177
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_177 .. :try_end_17a} :catch_181
    .catch Ljava/lang/IllegalStateException; {:try_start_177 .. :try_end_17a} :catch_17e
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_17a} :catch_17b

    return-void

    :catch_17b
    move-exception v0

    move-object p0, v0

    goto :goto_190

    :catch_17e
    move-exception v0

    move-object p0, v0

    goto :goto_1a3

    :catch_181
    move-exception v0

    move-object p0, v0

    goto :goto_1b6

    :catchall_184
    move-exception v0

    move-object p0, v0

    .line 3065
    :try_start_186
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_189
    .catchall {:try_start_186 .. :try_end_189} :catchall_18a

    goto :goto_18f

    :catchall_18a
    move-exception v0

    move-object p2, v0

    :try_start_18c
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18f
    throw p0
    :try_end_190
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18c .. :try_end_190} :catch_181
    .catch Ljava/lang/IllegalStateException; {:try_start_18c .. :try_end_190} :catch_17e
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_190} :catch_17b

    .line 3080
    :goto_190
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c8

    .line 3078
    :goto_1a3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c8

    .line 3076
    :goto_1b6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1c8
    :goto_1c8
    return-void

    :cond_1c9
    move-object p1, p3

    move-object p3, p4

    .line 3058
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    return-void

    :cond_1d1
    move-object p1, p3

    move-object p3, p4

    .line 3128
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    return-void

    :cond_1d9
    move-object p1, p3

    move-object p3, p4

    .line 3054
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0, p1, p3}, Lcom/android/server/pm/SharedLibrariesRead;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public final dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 3188
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3193
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->generateApexPackageInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3195
    const-string p0, "Active APEX packages:"

    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3196
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3197
    const-string p1, "Inactive APEX packages:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3198
    invoke-static {v1, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3199
    const-string v1, "Factory APEX packages:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3200
    invoke-static {v2, p0, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3201
    invoke-static {v3, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 4

    .line 5864
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 6

    .line 5858
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 5881
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 5

    .line 5851
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 5886
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 6

    .line 5871
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 5876
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .registers 13

    if-ltz p2, :cond_49

    if-eqz p4, :cond_10

    .line 2849
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2850
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p4

    const-string/jumbo v0, "no_debugging_features"

    .line 2849
    invoke-static {p4, v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2853
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    .line 2854
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_39

    .line 2858
    :cond_20
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/ComputerEngine;->isSameProfileGroup(II)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 2859
    iget-object p1, v1, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 2864
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 2859
    const-string p3, "android.permission.INTERACT_ACROSS_PROFILES"

    const/4 p4, -0x1

    invoke-static {p1, p3, p4, v2, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3a

    :goto_39
    return-void

    .line 2868
    :cond_3a
    invoke-static {v2, v4, p5, v5, p0}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 2870
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    move v4, p2

    .line 2846
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid userId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 2909
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method public final enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 14

    if-ltz p2, :cond_2f

    if-eqz p4, :cond_10

    .line 2931
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2932
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p4

    const-string/jumbo v0, "no_debugging_features"

    .line 2931
    invoke-static {p4, v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2935
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p5

    .line 2936
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result p0

    if-eqz p0, :cond_20

    return-void

    .line 2941
    :cond_20
    invoke-static {v2, v4, p6, v5}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 2943
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    move v4, p2

    .line 2928
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid userId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public filterAppAccess(II)Z
    .registers 6

    .line 3003
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const/4 p0, 0x0

    if-ne p2, p1, :cond_b

    return p0

    .line 3008
    :cond_b
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p2

    if-ne p2, p1, :cond_12

    return p0

    :cond_12
    return v1

    .line 3016
    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3017
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 3018
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    if-nez p1, :cond_24

    return v1

    .line 3022
    :cond_24
    instance-of v2, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_2f

    .line 3023
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    return p0

    .line 3025
    :cond_2f
    instance-of v2, p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v2, :cond_3a

    .line 3026
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    return p0

    :cond_3a
    return v1
.end method

.method public filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 4

    .line 2991
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 2992
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    return p0
.end method

.method public filterAppAccess(Ljava/lang/String;IIZ)Z
    .registers 12

    .line 2997
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move v5, p3

    move v6, p4

    .line 2998
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    return p0
.end method

.method public final filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;
    .registers 4

    if-nez p2, :cond_3

    goto :goto_20

    .line 1365
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_9
    if-ltz p0, :cond_20

    .line 1366
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 1367
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1d

    .line 1368
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_20
    :goto_20
    return-object p1
.end method

.method public varargs filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    if-nez p1, :cond_b

    .line 5661
    const-class p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 5664
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5666
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_60

    aget-object v4, p1, v3

    if-nez v4, :cond_1b

    goto :goto_5d

    .line 5671
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5672
    const-string v6, "PackageManager"

    if-eqz v5, :cond_49

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_2a

    goto :goto_49

    .line 5677
    :cond_2a
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    if-nez v5, :cond_45

    .line 5678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not system"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 5682
    :cond_45
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 5673
    :cond_49
    :goto_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 5685
    :cond_60
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 12

    const-wide/32 v0, 0x4000000

    and-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    const/4 p5, 0x0

    if-eqz p4, :cond_1f

    .line 2152
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p4

    .line 2153
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result p4

    if-eqz p4, :cond_16

    return p5

    .line 2157
    :cond_16
    const-string p4, "android.permission.INSTALL_PACKAGES"

    .line 2158
    invoke-virtual {p0, p4, p2}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result p4

    if-nez p4, :cond_1f

    return p5

    :cond_1f
    if-eqz p1, :cond_99

    .line 2164
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-eqz p4, :cond_99

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result p4

    if-nez p4, :cond_32

    goto :goto_99

    .line 2169
    :cond_32
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibraryName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibVersionMajor()I

    move-result v0

    int-to-long v0, v0

    .line 2168
    invoke-virtual {p0, p4, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p4

    if-nez p4, :cond_4a

    return p5

    .line 2174
    :cond_4a
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 2175
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_5a

    return p3

    .line 2180
    :cond_5a
    array-length v0, p2

    move v1, p5

    :goto_5c
    if-ge v1, v0, :cond_98

    aget-object v2, p2, v1

    .line 2181
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    return p5

    .line 2184
    :cond_6b
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_95

    .line 2186
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 2187
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2186
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_82

    goto :goto_95

    .line 2191
    :cond_82
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v2

    aget-wide v2, v2, v3

    .line 2192
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_95

    return p5

    :cond_95
    :goto_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_98
    return p3

    :cond_99
    :goto_99
    return p5
.end method

.method public final filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 7

    .line 2203
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 12

    const-wide/32 v0, 0x4000000

    and-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    const/4 p5, 0x0

    if-eqz p4, :cond_1f

    .line 2096
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p4

    .line 2097
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result p4

    if-eqz p4, :cond_16

    return p5

    .line 2101
    :cond_16
    const-string p4, "android.permission.INSTALL_PACKAGES"

    .line 2102
    invoke-virtual {p0, p4, p2}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result p4

    if-nez p4, :cond_1f

    return p5

    :cond_1f
    if-eqz p1, :cond_98

    .line 2108
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-eqz p4, :cond_98

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStaticSharedLibrary()Z

    move-result p4

    if-nez p4, :cond_32

    goto :goto_98

    .line 2113
    :cond_32
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object p4

    .line 2114
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryVersion()J

    move-result-wide v0

    .line 2112
    invoke-virtual {p0, p4, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p4

    if-nez p4, :cond_49

    return p5

    .line 2119
    :cond_49
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 2120
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_59

    return p3

    .line 2125
    :cond_59
    array-length v0, p2

    move v1, p5

    :goto_5b
    if-ge v1, v0, :cond_97

    aget-object v2, p2, v1

    .line 2126
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    return p5

    .line 2129
    :cond_6a
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 2131
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 2132
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2131
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_81

    goto :goto_94

    .line 2136
    :cond_81
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    aget-wide v2, v2, v3

    .line 2137
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_94

    return p5

    :cond_94
    :goto_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_97
    return p3

    :cond_98
    :goto_98
    return p5
.end method

.method public final findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 16

    .line 845
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSTALL_FAILURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move v7, p2

    move v9, p3

    .line 848
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object p0

    .line 852
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3b

    const/4 p3, 0x0

    :goto_20
    if-ge p3, p2, :cond_3b

    .line 855
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 856
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v1, :cond_31

    add-int/lit8 p3, p3, 0x1

    goto :goto_20

    .line 859
    :cond_31
    new-instance p0, Landroid/content/ComponentName;

    iget-object p2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;
    .registers 23

    move/from16 v5, p7

    .line 3477
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v6

    .line 3478
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3479
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    .line 3481
    const-string v7, "PackageManager"

    if-eqz p6, :cond_15

    .line 3482
    const-string v1, "Looking for persistent preferred activities..."

    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_37

    const-wide/32 v1, 0x10000

    and-long v1, p3, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    move v4, v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v1, p0

    goto :goto_32

    :cond_2c
    move v4, v9

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 3485
    :goto_32
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_38

    :cond_37
    move-object v0, v8

    :goto_38
    if-eqz v0, :cond_102

    .line 3489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_102

    .line 3490
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v9

    :goto_45
    if-ge v3, v2, :cond_102

    .line 3492
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 3493
    const-string v10, "  "

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz p6, :cond_86

    .line 3494
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checking PersistentPreferredActivity ds="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    invoke-virtual {v4}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v14

    if-lez v14, :cond_68

    invoke-virtual {v4, v9}, Lcom/android/server/pm/WatchedIntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6a

    :cond_68
    const-string v14, "<none>"

    :goto_6a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n  component="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v4, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3494
    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    new-instance v13, Landroid/util/LogPrinter;

    invoke-direct {v13, v12, v7, v11}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v13, v10}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3499
    :cond_86
    iget-object v4, v4, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v13, 0x200

    or-long v13, p3, v13

    invoke-virtual {p0, v4, v13, v14, v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz p6, :cond_a7

    .line 3502
    const-string v13, "Found persistent preferred activity:"

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_a2

    .line 3504
    new-instance v13, Landroid/util/LogPrinter;

    invoke-direct {v13, v12, v7, v11}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v13, v10}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_a7

    .line 3506
    :cond_a2
    const-string v10, "  null"

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    :goto_a7
    if-nez v4, :cond_ac

    :cond_a9
    move-object/from16 v11, p5

    goto :goto_fe

    :cond_ac
    move v10, v9

    :goto_ad
    if-ge v10, v6, :cond_a9

    move-object/from16 v11, p5

    .line 3515
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 3516
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3517
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c8

    goto :goto_d4

    .line 3520
    :cond_c8
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d7

    :goto_d4
    add-int/lit8 v10, v10, 0x1

    goto :goto_ad

    :cond_d7
    if-eqz p6, :cond_fd

    .line 3525
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Returning persistent preferred activity: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    return-object v12

    :goto_fe
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_45

    :cond_102
    return-object v8
.end method

.method public findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 34

    .line 3247
    new-instance v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v2, p9

    move v7, v6

    .line 3251
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v6

    move v3, v2

    move-wide v1, v4

    move v5, v7

    move/from16 v4, p11

    .line 3249
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v1

    .line 3253
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide v3, v1

    move-object/from16 v2, p2

    move-object v1, v0

    move-object/from16 v0, p0

    .line 3256
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    move-wide v10, v3

    move-object v6, v5

    move v3, v7

    iput-object v9, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_3b

    goto/16 :goto_2df

    .line 3264
    :cond_3b
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    .line 3266
    const-string v7, "PackageManager"

    if-eqz p8, :cond_4a

    const-string v4, "Looking for preferred activities..."

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    if-eqz v2, :cond_6f

    const-wide/32 v4, 0x10000

    and-long/2addr v4, v10

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-eqz v4, :cond_5f

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    const/4 v4, 0x1

    :goto_5b
    move v5, v3

    move-object/from16 v3, p2

    goto :goto_65

    :cond_5f
    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    const/4 v4, 0x0

    goto :goto_5b

    .line 3268
    :goto_65
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v5

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    :goto_70
    if-eqz v4, :cond_2df

    .line 3272
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2df

    if-eqz p8, :cond_7f

    .line 3280
    const-string v5, "Figuring out best match..."

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    :cond_7f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_85
    if-ge v14, v5, :cond_bd

    .line 3285
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/content/pm/ResolveInfo;

    if-eqz p8, :cond_b5

    .line 3287
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Match for "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": 0x"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/ResolveInfo;->match:I

    .line 3288
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3287
    invoke-static {v7, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    :cond_b5
    iget v9, v9, Landroid/content/pm/ResolveInfo;->match:I

    if-le v9, v15, :cond_ba

    move v15, v9

    :cond_ba
    add-int/lit8 v14, v14, 0x1

    goto :goto_85

    :cond_bd
    if-eqz p8, :cond_d7

    .line 3296
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Best match: 0x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    const/high16 v9, 0xfff0000

    and-int/2addr v9, v15

    .line 3299
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_df
    if-ge v13, v12, :cond_2df

    .line 3301
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PreferredActivity;

    .line 3302
    const-string v15, "  "

    move-object/from16 p11, v4

    if-eqz p8, :cond_129

    .line 3303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v10

    const-string v10, "Checking PreferredActivity ds="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    invoke-virtual {v14}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v10

    if-lez v10, :cond_105

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Lcom/android/server/pm/WatchedIntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_108

    :cond_105
    const/4 v10, 0x0

    const-string v11, "<none>"

    :goto_108
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n  component="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v11, v11, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3303
    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v10, 0x2

    const/4 v11, 0x3

    invoke-direct {v4, v10, v7, v11}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v14, v4, v15}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_12b

    :cond_129
    move-wide/from16 v18, v10

    .line 3308
    :goto_12b
    iget-object v4, v14, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v10, v4, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eq v10, v9, :cond_159

    if-eqz p8, :cond_14f

    .line 3310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping bad match "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v14, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v10, v10, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3311
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3310
    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14f
    :goto_14f
    move-object/from16 v4, p2

    move/from16 v17, v5

    move/from16 v16, v9

    :goto_155
    const/4 v5, 0x1

    const/4 v9, 0x0

    goto/16 :goto_2d3

    :cond_159
    if-eqz p6, :cond_167

    .line 3317
    iget-boolean v10, v4, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v10, :cond_167

    if-eqz p8, :cond_14f

    .line 3318
    const-string v4, "Skipping mAlways=false entry"

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14f

    .line 3321
    :cond_167
    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const-wide/32 v10, 0xc0200

    or-long v10, v18, v10

    invoke-virtual {v0, v4, v10, v11, v3}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz p8, :cond_190

    .line 3326
    const-string v10, "Found preferred activity:"

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_188

    .line 3328
    new-instance v10, Landroid/util/LogPrinter;

    move/from16 v16, v9

    const/4 v9, 0x2

    const/4 v11, 0x3

    invoke-direct {v10, v9, v7, v11}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v10, v15}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_192

    :cond_188
    move/from16 v16, v9

    .line 3330
    const-string v9, "  null"

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_192

    :cond_190
    move/from16 v16, v9

    .line 3333
    :goto_192
    invoke-static {v1}, Lcom/android/server/pm/ComputerEngine;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_19c

    if-nez p12, :cond_19c

    const/4 v9, 0x1

    goto :goto_19d

    :cond_19c
    const/4 v9, 0x0

    :goto_19d
    if-nez v9, :cond_1a3

    if-nez p10, :cond_1a3

    const/4 v10, 0x1

    goto :goto_1a4

    :cond_1a3
    const/4 v10, 0x0

    :goto_1a4
    if-nez v4, :cond_1d3

    if-nez v10, :cond_1ad

    :cond_1a8
    move-object/from16 v4, p2

    move/from16 v17, v5

    goto :goto_155

    .line 3349
    :cond_1ad
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling preferred activity: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v9, v9, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    invoke-virtual {v2, v14}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v4, 0x1

    .line 3352
    iput-boolean v4, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    move/from16 v17, v5

    const/4 v9, 0x0

    move v5, v4

    :goto_1cf
    move-object/from16 v4, p2

    goto/16 :goto_2d3

    :cond_1d3
    const/4 v11, 0x0

    :goto_1d4
    if-ge v11, v5, :cond_1a8

    .line 3356
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    move/from16 v17, v5

    .line 3357
    iget-object v5, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v20, v10

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3358
    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f1

    goto :goto_1fd

    .line 3361
    :cond_1f1
    iget-object v5, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_204

    :goto_1fd
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v17

    move/from16 v10, v20

    goto :goto_1d4

    :cond_204
    if-eqz p7, :cond_211

    if-eqz v20, :cond_211

    .line 3366
    invoke-virtual {v2, v14}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v4, 0x1

    .line 3367
    iput-boolean v4, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    move v5, v4

    const/4 v9, 0x0

    goto :goto_1cf

    :cond_211
    if-eqz p6, :cond_24c

    .line 3380
    iget-object v4, v14, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3381
    invoke-virtual {v4, v6, v9, v3}, Lcom/android/server/pm/PreferredComponent;->sameSet(Ljava/util/List;ZI)Z

    move-result v3

    if-nez v3, :cond_24c

    .line 3382
    iget-object v3, v14, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v3, v6, v9}, Lcom/android/server/pm/PreferredComponent;->isSuperset(Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_24e

    if-eqz v20, :cond_24c

    move-object v1, v15

    .line 3394
    new-instance v15, Lcom/android/server/pm/PreferredActivity;

    iget-object v3, v14, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v4, v3, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3396
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PreferredComponent;->discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;

    move-result-object v18

    iget-object v3, v14, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v3, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    iget-boolean v3, v3, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    move/from16 v20, v3

    move/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v14

    move-object v3, v1

    invoke-direct/range {v15 .. v20}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3399
    invoke-virtual {v2, v14}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3400
    invoke-virtual {v2, v0, v15}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v4, 0x1

    .line 3401
    iput-boolean v4, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    goto :goto_2aa

    :cond_24c
    move-object v3, v15

    goto :goto_2aa

    :cond_24e
    move-object v3, v15

    .line 3408
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_264

    const-string v4, "android.intent.category.HOME"

    .line 3409
    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_264

    goto :goto_2aa

    :cond_264
    if-eqz v20, :cond_2a6

    .line 3415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result set changed, dropping preferred activity for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    invoke-virtual {v2, v14}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3426
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    iget-object v3, v14, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v4, v3, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v3, v3, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p5, v1

    move-object/from16 p9, v3

    move/from16 p7, v4

    move/from16 p10, v5

    move-object/from16 p8, v6

    move-object/from16 p6, v14

    invoke-direct/range {p5 .. p10}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3429
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v5, 0x1

    .line 3430
    iput-boolean v5, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    :cond_2a6
    const/4 v9, 0x0

    .line 3432
    iput-object v9, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v8

    :goto_2aa
    if-eqz p8, :cond_2d0

    .line 3440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning preferred activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    :cond_2d0
    iput-object v3, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v8

    :goto_2d3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, p11

    move/from16 v9, v16

    move/from16 v5, v17

    move-wide/from16 v10, v18

    goto/16 :goto_df

    :cond_2df
    :goto_2df
    return-object v8
.end method

.method public final findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 24

    .line 3462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 3465
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3466
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    move v12, v1

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v1, p1

    goto :goto_39

    :cond_27
    move v12, v2

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v2, p2

    .line 3469
    :goto_39
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object p0

    return-object p0
.end method

.method public final generateApexPackageInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9

    .line 3170
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3171
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3172
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 3173
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v3, :cond_29

    goto :goto_a

    .line 3176
    :cond_29
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3177
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_36

    .line 3178
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3180
    :cond_36
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 3181
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3182
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_43
    return-void
.end method

.method public final generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 11

    .line 953
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 954
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_52

    move-wide v3, p2

    move p2, p4

    move p3, p5

    move-wide p4, v3

    .line 956
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    move-object v2, p0

    move p0, p2

    move-object p5, p1

    move-wide p1, v3

    if-eqz v0, :cond_21

    return-object v1

    .line 959
    :cond_21
    invoke-virtual {v2, p5, p0, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_28

    return-object v1

    .line 962
    :cond_28
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_38

    .line 963
    invoke-virtual {v2, p5, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 965
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_37
    return-object v1

    .line 969
    :cond_38
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    move p4, p3

    .line 970
    invoke-interface {p5, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p3

    .line 969
    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 972
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_51
    return-object p0

    :cond_52
    return-object v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
    .registers 19

    move/from16 v11, p4

    .line 1481
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_c

    return-object v13

    :cond_c
    if-nez p1, :cond_f

    return-object v13

    .line 1485
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1492
    invoke-virtual {p0, p1, v0, v11}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-object v13

    :cond_1a
    const-wide/16 v0, 0x2000

    and-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    .line 1497
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_30

    const-wide/32 v0, 0x400000

    or-long v0, p2, v0

    goto :goto_32

    :cond_30
    move-wide/from16 v0, p2

    .line 1501
    :goto_32
    invoke-interface {p1, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    move-wide v4, v2

    move-wide v2, v0

    .line 1502
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_ca

    const-wide/16 v6, 0x100

    and-long/2addr v6, v2

    cmp-long v1, v6, v4

    if-nez v1, :cond_48

    .line 1505
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_56

    .line 1506
    :cond_48
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-static {v11, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    invoke-interface {v1, v6}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v1

    :goto_56
    const-wide/16 v6, 0x1000

    and-long/2addr v6, v2

    cmp-long v4, v6, v4

    if-eqz v4, :cond_74

    .line 1509
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_68

    goto :goto_74

    .line 1510
    :cond_68
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    :goto_72
    move-object v8, v5

    goto :goto_77

    .line 1509
    :cond_74
    :goto_74
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_72

    :goto_77
    if-eqz v4, :cond_90

    .line 1513
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_84

    goto :goto_90

    .line 1514
    :cond_84
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v4

    :goto_8e
    move-object v9, v4

    goto :goto_93

    .line 1513
    :cond_90
    :goto_90
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_8e

    .line 1517
    :goto_93
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    move-result-wide v6

    move-object v12, p1

    .line 1516
    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_a3

    return-object v13

    .line 1524
    :cond_a3
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1525
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1528
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 1530
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 1531
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1530
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageInfo;->setApexPackageName(Ljava/lang/String;)V

    .line 1536
    :cond_bc
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDeveloperVerificationStatusInternal()Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object p0

    if-eqz p0, :cond_c9

    .line 1539
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->isAppMetadataVerified()Z

    move-result p0

    .line 1538
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageInfo;->setIsAppMetadataVerified(Z)V

    :cond_c9
    return-object v1

    :cond_ca
    const-wide v0, 0x100002000L    # 2.1219998384E-314

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_176

    .line 1544
    invoke-static {v10, v2, v3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 1545
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1546
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1547
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    .line 1548
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p0

    if-eqz p0, :cond_fa

    .line 1549
    invoke-interface {p0}, Lcom/android/server/pm/pkg/SharedUserApi;->getName()Ljava/lang/String;

    move-result-object v13

    :cond_fa
    iput-object v13, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 1550
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1551
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1553
    new-instance p0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1554
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1555
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v11, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1556
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1557
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1558
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1559
    invoke-static {v1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 1560
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1561
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getTargetSdkVersion()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1562
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1563
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrivateFlags()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1564
    invoke-static {p0, v2, v3, v10, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1566
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getSigningInfo()Landroid/content/pm/SigningInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 1567
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1568
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p0

    if-eqz p0, :cond_175

    .line 1569
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInfo;->setArchiveTimeMillis(J)V

    :cond_175
    return-object v0

    :cond_176
    return-object v13
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 11

    .line 867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityInfoCrossProfile(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 11

    .line 882
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 883
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v2

    .line 885
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 16

    .line 896
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 897
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v2

    .line 899
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v8, 0x0

    const-string v9, "get activity info"

    const/4 v7, 0x0

    move-object v4, p0

    move v6, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v0, v4

    move v5, v6

    :goto_27
    move-object v1, p1

    move v4, p4

    goto :goto_2d

    :cond_2a
    move-object v0, p0

    move v5, p5

    goto :goto_27

    .line 905
    :goto_2d
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 16

    .line 910
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v1

    const-wide v2, 0x200000000L

    or-long/2addr v2, p2

    const/4 p2, 0x0

    if-nez v1, :cond_11

    move-object v0, p2

    goto :goto_1e

    .line 917
    :cond_11
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/AndroidPackage;

    move-object v0, p3

    :goto_1e
    if-eqz v0, :cond_57

    move-wide v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 918
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result p3

    move-object v9, v1

    move-object v6, v2

    move-wide v7, v3

    if-eqz p3, :cond_58

    .line 919
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_3c

    return-object p2

    :cond_3c
    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move v2, p4

    move v5, p5

    .line 921
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-eqz p0, :cond_48

    return-object p2

    .line 926
    :cond_48
    invoke-interface {v1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    move-object v0, v6

    move-object v6, v1

    move-object v1, v0

    move v5, p5

    move-wide v2, v7

    move-object v0, v9

    .line 925
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_57
    move-wide v7, v2

    .line 928
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->resolveComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 929
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    sget-object p1, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-static {p0, v7, v8, p1, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_6b
    return-object p2
.end method

.method public getAllAvailablePackageNames()[Ljava/lang/String;
    .registers 2

    .line 1668
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 9

    .line 5015
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5016
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 5018
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5019
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5020
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 v2, 0x0

    goto :goto_1f

    .line 5021
    :cond_1b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    :goto_1f
    if-eqz v2, :cond_7b

    .line 5022
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_7b

    .line 5025
    :cond_2c
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 5026
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 5028
    :cond_37
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p0

    .line 5029
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_46
    if-ge v1, p0, :cond_75

    .line 5031
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 5032
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    move v4, v0

    .line 5033
    :goto_57
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_72

    .line 5034
    new-instance v5, Landroid/content/IntentFilter;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 5037
    :cond_75
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 5023
    :cond_7b
    :goto_7b
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getAllPackages()Ljava/util/List;
    .registers 9

    .line 4306
    const-string v0, "getAllPackages is limited to privileged callers"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 4308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4309
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4310
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4311
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 4313
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 4314
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_4f

    .line 4317
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4318
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isVisibleToInstantApps()Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_34

    .line 4321
    :cond_47
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 4325
    :cond_4f
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4326
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_8a

    .line 4328
    invoke-interface {v5, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_8a

    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4330
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    .line 4329
    invoke-virtual {v6, v1, v7, v5}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v5

    if-nez v5, :cond_8a

    goto :goto_59

    .line 4333
    :cond_8a
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_92
    return-object v3
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 9

    .line 4519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4520
    const-string v5, "getAppOpPermissionPackages"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    if-eqz p1, :cond_57

    .line 4522
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_57

    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4523
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_57

    .line 4527
    :cond_1e
    new-instance p0, Landroid/util/ArraySet;

    iget-object p2, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4528
    invoke-interface {p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 4529
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2f
    if-ltz p1, :cond_4a

    .line 4530
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4531
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 4532
    invoke-virtual {v3, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    .line 4531
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2

    if-nez p2, :cond_44

    goto :goto_47

    .line 4535
    :cond_44
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :goto_47
    add-int/lit8 p1, p1, -0x1

    goto :goto_2f

    .line 4537
    :cond_4a
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 4524
    :cond_57
    :goto_57
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 9

    .line 5193
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x2

    return p0

    .line 5194
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 5195
    const-string v5, "get enabled"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5198
    :try_start_17
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5199
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    .line 5198
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-nez p0, :cond_2a

    .line 5202
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 5200
    :cond_2a
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_30} :catch_30

    .line 5204
    :catch_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .registers 12

    .line 4948
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4949
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 4950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationHidden for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4954
    :try_start_28
    iget-object p0, v3, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_4b

    const/4 p1, 0x1

    if-nez p0, :cond_35

    .line 4963
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 4958
    :cond_35
    :try_start_35
    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_4b

    if-eqz p2, :cond_3f

    .line 4963
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 4961
    :cond_3f
    :try_start_3f
    invoke-interface {p0, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result p0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_4b

    .line 4963
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_4b
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4964
    throw p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 11

    .line 981
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 16

    .line 993
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 994
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v2

    .line 996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 997
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v8, 0x0

    const-string v9, "get application info"

    const/4 v7, 0x0

    move-object v4, p0

    move v6, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v0, v4

    move v5, v6

    :goto_27
    move-object v1, p1

    move v4, p4

    goto :goto_2d

    :cond_2a
    move-object v0, p0

    move v5, p5

    goto :goto_27

    .line 1002
    :goto_2d
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 16

    const-wide/16 v0, -0x1

    .line 1010
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 1013
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    .line 1021
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-nez v5, :cond_28

    return-object v2

    :cond_28
    if-nez v0, :cond_31

    .line 1023
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p1

    if-eqz p1, :cond_31

    return-object v2

    :cond_31
    move-object v4, p0

    move-wide v8, p2

    move v6, p4

    move v7, p5

    .line 1026
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p0

    move-object p2, v4

    move p4, v6

    move p5, v7

    if-eqz p0, :cond_3f

    return-object v2

    .line 1029
    :cond_3f
    invoke-virtual {p2, v5, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_46

    return-object v2

    .line 1034
    :cond_46
    invoke-interface {v5, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    move-object v6, v5

    move-wide v2, v8

    move v5, p5

    .line 1033
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 1036
    invoke-virtual {p2, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_59
    return-object p0

    :cond_5a
    move-wide v8, p2

    move-object p2, p0

    .line 1040
    const-string p0, "android"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    const-string/jumbo p0, "system"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6f

    :cond_6d
    move-object p0, p2

    goto :goto_81

    :cond_6f
    const-wide v0, 0x100402000L

    and-long/2addr v0, v8

    cmp-long p0, v0, v4

    if-eqz p0, :cond_80

    move-object p0, p2

    move-wide p2, v8

    .line 1045
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_80
    return-object v2

    .line 1041
    :goto_81
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getBaseSdkSandboxUid()I
    .registers 2

    .line 5776
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p0

    return p0
.end method

.method public getBlockUninstall(ILjava/lang/String;)Z
    .registers 3

    .line 5759
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBlockUninstallForUser(Ljava/lang/String;I)Z
    .registers 5

    .line 5042
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eqz v0, :cond_1a

    .line 5044
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1a

    .line 5047
    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;II)I
    .registers 10

    .line 5212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "getComponentEnabled"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5214
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/pm/ComputerEngine;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result p0

    return p0
.end method

.method public getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I
    .registers 13

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 5222
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x2

    return p0

    .line 5225
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5226
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_18} :catch_35

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v5, p1

    move v4, p2

    move v7, p3

    .line 5225
    :try_start_1e
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 5230
    iget-object p0, v2, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, v5, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p0

    return p0

    .line 5228
    :cond_2b
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_35} :catch_36

    :catch_35
    move-object v5, p1

    .line 5232
    :catch_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown component: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .registers 1

    .line 5813
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    return-object p0
.end method

.method public final getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 19

    move/from16 v0, p5

    .line 1133
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string v2, "allow_parent_profile_app_linking"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_e

    return-object v8

    .line 1137
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_74

    .line 1140
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_74

    .line 1144
    :cond_23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v1, 0x0

    move v10, v1

    move-object v11, v8

    :goto_2a
    if-ge v10, v9, :cond_6c

    .line 1146
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1150
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_39

    :goto_36
    move/from16 v6, p6

    goto :goto_69

    .line 1153
    :cond_39
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1154
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_46

    goto :goto_36

    .line 1159
    :cond_46
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v3, p1

    move-wide v4, p3

    move/from16 v6, p6

    .line 1160
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v1

    if-nez v11, :cond_61

    .line 1163
    new-instance v11, Lcom/android/server/pm/CrossProfileDomainInfo;

    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v2}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {p0, v2, v0, v6}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-direct {v11, v2, v1, v6}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    goto :goto_69

    .line 1167
    :cond_61
    iget v2, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1168
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    :goto_69
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_6c
    if-eqz v11, :cond_73

    .line 1171
    iget p0, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-gtz p0, :cond_73

    return-object v8

    :cond_73
    return-object v11

    :cond_74
    :goto_74
    return-object v8
.end method

.method public getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 3998
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    const-string v3, "getDeclaredSharedLibraries"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4001
    const-string v5, "getDeclaredSharedLibraries"

    const/4 v3, 0x1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v9, v1

    .line 4004
    const-string/jumbo v1, "packageName cannot be null"

    invoke-static {v8, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4005
    const-string/jumbo v1, "userId must be >= 0"

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4006
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_31

    return-object v10

    .line 4010
    :cond_31
    invoke-virtual {v0, v9}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    return-object v10

    .line 4015
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v11

    .line 4018
    invoke-virtual {v11}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    move-object v1, v10

    move v14, v13

    :goto_43
    if-ge v14, v12, :cond_11e

    .line 4021
    invoke-virtual {v11, v14}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v15, :cond_51

    :goto_4e
    move v4, v9

    goto/16 :goto_115

    .line 4026
    :cond_51
    invoke-virtual {v15}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v3

    move-object/from16 v16, v1

    move v1, v13

    :goto_58
    if-ge v1, v3, :cond_111

    .line 4028
    invoke-virtual {v15, v1}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    .line 4030
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    .line 4031
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    move/from16 v21, v1

    move/from16 v20, v3

    goto :goto_a0

    .line 4035
    :cond_75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    move v5, v1

    .line 4038
    :try_start_7a
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4039
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v6

    const-wide/32 v20, 0x4000000

    or-long v20, p2, v20

    move v4, v3

    move-wide v2, v6

    .line 4041
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move/from16 v7, p4

    move-wide/from16 v34, v20

    move/from16 v20, v4

    move/from16 v21, v5

    move-wide/from16 v4, v34

    .line 4037
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_9b
    .catchall {:try_start_7a .. :try_end_9b} :catchall_10c

    if-nez v1, :cond_a2

    .line 4046
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_a0
    move v4, v9

    goto :goto_101

    :cond_a2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v5, p4

    move v4, v9

    move-object/from16 v1, v17

    .line 4050
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v6

    .line 4051
    new-instance v22, Landroid/content/pm/SharedLibraryInfo;

    .line 4052
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 4053
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v25

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v26

    .line 4054
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v27

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v29

    .line 4055
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v30

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/List;

    .line 4057
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_df

    move-object/from16 v32, v10

    goto :goto_ea

    .line 4058
    :cond_df
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v32, v0

    .line 4059
    :goto_ea
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v33

    invoke-direct/range {v22 .. v33}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v0, v22

    if-nez v16, :cond_fa

    .line 4062
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_fa
    move-object/from16 v1, v16

    .line 4064
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    :goto_101
    add-int/lit8 v1, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p4

    move v9, v4

    move/from16 v3, v20

    goto/16 :goto_58

    :catchall_10c
    move-exception v0

    .line 4046
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4047
    throw v0

    :cond_111
    move-object/from16 v1, v16

    goto/16 :goto_4e

    :goto_115
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p4

    move v9, v4

    goto/16 :goto_43

    :cond_11e
    if-eqz v1, :cond_126

    .line 4068
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_126
    return-object v10
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 8

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_c

    return-object p0

    .line 1063
    :cond_c
    const-string p0, "PackageManager"

    const-string p1, "Default package for ROLE_HOME is not set in RoleManager"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    move-object v3, p1

    :goto_1c
    if-ge v2, p0, :cond_37

    .line 1071
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1072
    iget v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v5, v1, :cond_31

    .line 1073
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1074
    iget v1, v4, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_34

    :cond_31
    if-ne v5, v1, :cond_34

    move-object v3, p1

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_37
    return-object v3
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 2

    .line 5819
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledSystemPackageStates()Landroid/util/ArrayMap;
    .registers 1

    .line 3549
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPackages()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getFlagsForUid(I)I
    .registers 6

    .line 4433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4434
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 4437
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4438
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4440
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4441
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4442
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 4443
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_36

    .line 4444
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4445
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_31

    return v2

    .line 4448
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    return p0

    .line 4449
    :cond_36
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_48

    .line 4450
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4451
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_43

    return v2

    .line 4454
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    return p0

    :cond_48
    return v2
.end method

.method public getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    .line 5831
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 11

    .line 4793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4794
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-wide/16 v2, 0x0

    .line 4797
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4796
    const-string v1, "com.android.contacts"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 4798
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_39

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4799
    invoke-static {p0, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 4803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const-wide/16 v2, 0x0

    move v4, p1

    move-object v1, p2

    .line 4805
    :try_start_2b
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_33

    .line 4808
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_33
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4809
    throw p0

    .line 4800
    :cond_39
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not allow to call grantImplicitAccess"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 10

    .line 5631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5632
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/4 v4, 0x1

    .line 5634
    const-string v5, "getHarmfulAppInfo"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5637
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p0

    if-nez p0, :cond_28

    const-string p0, "android.permission.SET_HARMFUL_APP_WARNINGS"

    .line 5638
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_20

    goto :goto_28

    .line 5639
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5643
    :cond_28
    :goto_28
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 5647
    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5645
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 15

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x80

    move-object v0, p0

    move v5, p2

    .line 1086
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 1088
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    if-nez p0, :cond_14

    return-object p2

    .line 1092
    :cond_14
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1094
    iget-object p1, v0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p1, v5}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x0

    if-nez p1, :cond_47

    .line 1103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_2f

    const/4 v2, 0x1

    move v10, v2

    goto :goto_30

    :cond_2f
    move v10, v11

    :goto_30
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    move v9, v5

    move-object v5, p0

    .line 1106
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object p0

    .line 1108
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz p0, :cond_48

    .line 1109
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_48

    .line 1110
    iget-object p1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_48

    :cond_47
    move-object v5, p0

    :cond_48
    :goto_48
    if-nez p1, :cond_4b

    return-object p2

    .line 1117
    :cond_4b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    :goto_4f
    if-ge v11, p0, :cond_72

    .line 1119
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1121
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_6f

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1123
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_6f
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    :cond_72
    return-object p2
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .registers 2

    .line 1179
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public getInstallReason(Ljava/lang/String;I)I
    .registers 9

    .line 5481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 5482
    const-string v5, "get install reason"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5484
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 5485
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_25

    .line 5488
    :cond_1c
    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result p0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return p0
.end method

.method public final getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;
    .registers 5

    .line 5072
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5075
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 5076
    sget-object p0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    return-object p0

    :cond_f
    if-eqz v0, :cond_1d

    .line 5079
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_1d

    .line 5084
    :cond_18
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
    .registers 15

    .line 5091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 5092
    const-string v5, "getInstallSourceInfo"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5100
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_15

    return-object p2

    .line 5105
    :cond_15
    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v3, :cond_29

    .line 5107
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 5109
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_27
    move-object v9, p2

    goto :goto_2a

    :cond_29
    move-object v9, v3

    .line 5114
    :goto_2a
    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v3, :cond_54

    .line 5116
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    const/16 v5, 0x3e8

    if-eq v1, v5, :cond_41

    .line 5118
    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v5, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v5, 0x1

    :goto_42
    if-eqz v4, :cond_52

    .line 5124
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_52

    if-nez v5, :cond_54

    .line 5125
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine;->isCallerFromManagedUserOrProfile(I)Z

    move-result v4

    if-eqz v4, :cond_54

    :cond_52
    move-object v10, p2

    goto :goto_55

    :cond_54
    move-object v10, v3

    .line 5130
    :goto_55
    iget-boolean v3, p0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-eqz v3, :cond_6c

    .line 5135
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    goto :goto_69

    .line 5136
    :cond_60
    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 5137
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    goto :goto_6a

    :cond_69
    :goto_69
    move-object p1, p2

    :cond_6a
    :goto_6a
    move-object v6, p1

    goto :goto_89

    .line 5142
    :cond_6c
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    move-object v6, v9

    goto :goto_89

    .line 5148
    :cond_78
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 5149
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 5151
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_6a

    :cond_88
    move-object v6, p2

    .line 5157
    :goto_89
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    if-eqz p1, :cond_9c

    .line 5159
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_9b

    .line 5161
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_9c

    :cond_9b
    move-object p1, p2

    :cond_9c
    if-eqz p1, :cond_aa

    .line 5169
    iget-object v0, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_aa

    move-object v8, p2

    goto :goto_ab

    :cond_aa
    move-object v8, p1

    .line 5177
    :goto_ab
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v6, :cond_be

    if-eqz p1, :cond_be

    .line 5178
    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v0, v1, :cond_be

    .line 5180
    new-instance p2, Landroid/content/pm/SigningInfo;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {p2, p1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    :cond_be
    move-object v7, p2

    .line 5185
    new-instance v5, Landroid/content/pm/InstallSourceInfo;

    iget v11, p0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-direct/range {v5 .. v11}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v5
.end method

.method public getInstalledApplications(JIIZ)Ljava/util/List;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v6, p4

    .line 4610
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 4611
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 4613
    :cond_f
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 4614
    :cond_1a
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v7

    const-wide/32 v1, 0x402000

    and-long/2addr v1, v7

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_2c

    move v10, v9

    goto :goto_2d

    :cond_2c
    move v10, v2

    :goto_2d
    const-wide/32 v11, 0x40000000

    and-long/2addr v11, v7

    cmp-long v1, v11, v4

    if-eqz v1, :cond_37

    move v11, v9

    goto :goto_38

    :cond_37
    move v11, v2

    :goto_38
    if-nez v10, :cond_45

    const-wide v12, 0x100000000L

    and-long/2addr v12, v7

    cmp-long v1, v12, v4

    if-eqz v1, :cond_45

    goto :goto_46

    :cond_45
    move v9, v2

    :goto_46
    if-nez p5, :cond_55

    .line 4621
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get installed application info"

    const/4 v3, 0x0

    move/from16 v2, p3

    .line 4620
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4630
    :cond_55
    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    if-nez v10, :cond_5d

    if-eqz v9, :cond_63

    :cond_5d
    move/from16 v2, p3

    move-wide v4, v7

    move-object v7, v0

    goto/16 :goto_ca

    .line 4670
    :cond_63
    new-instance v9, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4671
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_76
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4672
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    if-nez v12, :cond_89

    goto :goto_76

    :cond_89
    if-nez v11, :cond_92

    .line 4676
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v2

    if-eqz v2, :cond_92

    goto :goto_76

    .line 4679
    :cond_92
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v3, p3

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v2

    move-object v7, v0

    if-eqz v2, :cond_a3

    :cond_a0
    :goto_a0
    move-object v0, v7

    move-wide v7, v4

    goto :goto_76

    .line 4682
    :cond_a3
    invoke-virtual {v7, v1, v6, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_aa

    goto :goto_a0

    :cond_aa
    move v2, v3

    .line 4686
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    move-object v0, v12

    move-wide/from16 v17, v4

    move-object v5, v1

    move v4, v2

    move-wide/from16 v1, v17

    .line 4685
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move v2, v4

    move-wide/from16 v4, v17

    if-eqz v3, :cond_a0

    .line 4688
    invoke-virtual {v7, v0}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4689
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_c9
    return-object v9

    .line 4632
    :goto_ca
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4633
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_db
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4636
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_f3

    const-wide/32 v12, 0x400000

    or-long/2addr v12, v4

    goto :goto_f4

    :cond_f3
    move-wide v12, v4

    .line 4639
    :goto_f4
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_14f

    if-nez v11, :cond_107

    .line 4640
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    if-eqz v0, :cond_107

    goto :goto_db

    .line 4643
    :cond_107
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    if-eqz v9, :cond_11a

    .line 4644
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_11a

    .line 4645
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-nez v0, :cond_11a

    goto :goto_db

    :cond_11a
    move v3, v2

    move v2, v6

    move-object v0, v7

    .line 4648
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v6

    move-object v7, v0

    move v14, v2

    move-wide v15, v4

    if-eqz v6, :cond_12a

    :goto_126
    move v2, v3

    move v6, v14

    :goto_128
    move-wide v4, v15

    goto :goto_db

    .line 4651
    :cond_12a
    invoke-virtual {v7, v1, v14, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_131

    goto :goto_126

    .line 4654
    :cond_131
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move v2, v3

    .line 4655
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    move-object v5, v1

    move v4, v2

    move-wide v1, v12

    .line 4654
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v1, v5

    if-eqz v0, :cond_15f

    .line 4657
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_15f

    :cond_14f
    move-wide v15, v4

    move v14, v6

    move-wide v2, v12

    .line 4662
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move/from16 v5, p3

    move-object v0, v7

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v0, v1

    :cond_15f
    :goto_15f
    if-eqz v0, :cond_164

    .line 4666
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_164
    move-object/from16 v7, p0

    move/from16 v2, p3

    move/from16 v6, p4

    goto :goto_128

    :cond_16b
    return-object v8
.end method

.method public final getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .registers 10

    .line 1697
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1698
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1699
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 1701
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 1702
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p1

    const/4 v4, 0x0

    .line 1704
    const-string v5, "get installed packages"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1707
    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;
    .registers 18

    const-wide/32 v0, 0x402000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_e

    move v0, v4

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    const-wide/32 v5, 0x40000000

    and-long/2addr v5, p1

    cmp-long v5, v5, v2

    if-eqz v5, :cond_19

    move v6, v4

    goto :goto_1a

    :cond_19
    move v6, v1

    :goto_1a
    const-wide/32 v7, 0x200000

    and-long/2addr v7, p1

    cmp-long v5, v7, v2

    if-eqz v5, :cond_24

    move v7, v4

    goto :goto_25

    :cond_24
    move v7, v1

    :goto_25
    if-nez v0, :cond_33

    const-wide v8, 0x100000000L

    and-long/2addr v8, p1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_33

    move v8, v4

    goto :goto_34

    :cond_33
    move v8, v1

    :goto_34
    if-nez v0, :cond_38

    if-eqz v8, :cond_3e

    :cond_38
    move/from16 v3, p3

    move/from16 v2, p4

    goto/16 :goto_a4

    .line 1753
    :cond_3e
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1754
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_53
    :goto_53
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_124

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1755
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v7, :cond_7d

    .line 1757
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_53

    .line 1761
    :cond_70
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_7d

    move-object v1, v2

    :cond_7d
    if-nez v6, :cond_86

    .line 1766
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_86

    goto :goto_53

    :cond_86
    move-object v0, p0

    move-wide v4, p1

    move/from16 v3, p3

    move/from16 v2, p4

    .line 1769
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v10

    if-eqz v10, :cond_93

    goto :goto_53

    .line 1772
    :cond_93
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v10

    if-eqz v10, :cond_9a

    goto :goto_53

    .line 1775
    :cond_9a
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 1777
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1721
    :goto_a4
    new-instance v9, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1722
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c1
    :goto_c1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_123

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v7, :cond_e3

    .line 1724
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    if-nez v11, :cond_d6

    goto :goto_c1

    .line 1727
    :cond_d6
    iget-object v11, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1728
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-eqz v11, :cond_e3

    move-object v1, v11

    :cond_e3
    if-nez v6, :cond_f6

    .line 1733
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    if-eqz v11, :cond_f6

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v11

    if-eqz v11, :cond_f6

    goto :goto_c1

    .line 1736
    :cond_f6
    invoke-interface {v1, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    if-eqz v8, :cond_109

    .line 1737
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v12

    if-nez v12, :cond_109

    .line 1738
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v11

    if-nez v11, :cond_109

    goto :goto_c1

    :cond_109
    move-object v0, p0

    move-wide v4, p1

    .line 1741
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v11

    if-eqz v11, :cond_112

    goto :goto_c1

    .line 1744
    :cond_112
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-eqz v11, :cond_119

    goto :goto_c1

    .line 1747
    :cond_119
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_c1

    .line 1749
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    :cond_123
    move-object v8, v9

    .line 1781
    :cond_124
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 5053
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5054
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 5058
    iget-object p1, p2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz p1, :cond_22

    .line 5060
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    if-eqz p2, :cond_20

    .line 5062
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5061
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x0

    return-object p0

    :cond_22
    return-object p1

    .line 5056
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .registers 1

    .line 5844
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 5845
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;
    .registers 1

    .line 5825
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .registers 4

    .line 1867
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1868
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 1870
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1871
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 1872
    instance-of v0, p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 1873
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1874
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    .line 1875
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 1876
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    return-object v1
.end method

.method public getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;
    .registers 11

    .line 4890
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4891
    const-string v5, "getInstrumentationInfoAsUser"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v5, v2

    .line 4893
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    const/4 p3, 0x0

    if-nez p0, :cond_18

    return-object p3

    .line 4894
    :cond_18
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 4895
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 4896
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v6, :cond_4f

    if-nez p0, :cond_2f

    goto :goto_4f

    :cond_2f
    const/4 v4, 0x0

    move-object v3, p1

    move v2, v1

    move-object v1, v6

    .line 4898
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    if-eqz p1, :cond_3a

    return-object p3

    .line 4902
    :cond_3a
    iget-object p1, v0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 4903
    invoke-interface {v1, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    int-to-long v2, p2

    move-object v6, v1

    move-object v1, p0

    .line 4904
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object p0

    return-object p0

    :cond_4f
    :goto_4f
    return-object p3
.end method

.method public final getIsolatedOwner(I)I
    .registers 3

    .line 1886
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v0, :cond_20

    .line 1888
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No owner UID found for isolated UID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_20
    return p0
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 6

    if-eqz p1, :cond_62

    if-nez p2, :cond_5

    goto :goto_62

    .line 5289
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5290
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5291
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v2, :cond_35

    .line 5293
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5292
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_35

    .line 5297
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5298
    new-instance v0, Landroid/content/pm/KeySet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 5294
    :cond_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeySet requested for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PackageManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    :goto_62
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 11

    .line 1187
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .line 1189
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 6

    .line 4342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4343
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 4346
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4347
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4349
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4350
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4351
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 4353
    :cond_24
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4354
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 4355
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_54

    .line 4356
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4357
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_3b

    return-object v2

    .line 4360
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4361
    :cond_54
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_66

    .line 4362
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4363
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_61

    return-object v2

    .line 4366
    :cond_61
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_66
    return-object v2
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_81

    .line 4374
    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_81

    .line 4377
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4378
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    return-object v0

    .line 4381
    :cond_13
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4382
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    .line 4383
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    :goto_1d
    if-ltz v4, :cond_80

    .line 4384
    aget v5, p1, v4

    .line 4385
    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 4386
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result v5

    .line 4388
    :cond_2b
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 4389
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v5

    .line 4391
    :cond_35
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 4392
    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 4393
    instance-of v6, v5, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_65

    .line 4394
    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4395
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 4396
    aput-object v0, v3, v4

    goto :goto_7d

    .line 4398
    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shared:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_7d

    .line 4400
    :cond_65
    instance-of v6, v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_7b

    .line 4401
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4402
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 4403
    aput-object v0, v3, v4

    goto :goto_7d

    .line 4405
    :cond_74
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_7d

    .line 4408
    :cond_7b
    aput-object v0, v3, v4

    :goto_7d
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    :cond_80
    return-object v3

    :cond_81
    :goto_81
    return-object v0
.end method

.method public getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 9

    .line 3568
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3569
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3571
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3572
    array-length v3, p1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_23

    aget-object v5, p1, v4

    .line 3573
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3574
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-nez v6, :cond_20

    .line 3575
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_23
    return-object v2
.end method

.method public getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 6

    const/16 v0, 0x3e8

    .line 942
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    move v1, v0

    goto :goto_c

    .line 944
    :cond_b
    array-length v1, p1

    :goto_c
    const/4 v2, 0x0

    :goto_d
    if-nez v2, :cond_1e

    if-ge v0, v1, :cond_1e

    .line 946
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    return-object v2
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 4

    const-wide/16 v0, -0x1

    .line 936
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 938
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public getPackageGids(Ljava/lang/String;JI)[I
    .registers 14

    .line 3687
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3688
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3689
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    const/4 v6, 0x0

    .line 3690
    const-string v7, "getPackageGids"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3693
    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_22

    return-object v1

    .line 3697
    :cond_22
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 3698
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 3699
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 3700
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 3701
    iget-object p1, v2, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3702
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    .line 3701
    invoke-static {v4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object p0

    return-object p0

    :cond_4d
    const-wide v5, 0x100402000L

    and-long/2addr v5, p2

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_74

    .line 3706
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 3707
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-nez p1, :cond_74

    .line 3708
    iget-object p1, v2, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3709
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {v4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 3708
    invoke-interface {p1, p0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object p0

    return-object p0

    :cond_74
    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 13

    const-wide/16 v2, -0x1

    .line 1585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v7, p4

    .line 1584
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 16

    .line 1596
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1597
    :cond_a
    invoke-virtual {p0, p4, p5, p7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v6

    .line 1598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get package info"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v1, p1

    move-wide v4, v6

    move v6, p6

    move v7, v2

    move-wide v2, p2

    .line 1601
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 20

    .line 1609
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    const-wide/32 v0, 0x200000

    and-long v0, p4, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_13

    move v0, v4

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    const-wide/32 v5, 0x40000000

    and-long v5, p4, v5

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1e

    move v1, v4

    :cond_1e
    const/4 v6, 0x0

    if-eqz v0, :cond_5a

    .line 1615
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_5a

    if-nez v1, :cond_3c

    .line 1617
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-object v6

    :cond_3c
    move-object v0, p0

    move/from16 v2, p6

    move/from16 v3, p7

    move-object v1, v4

    move-wide/from16 v4, p4

    .line 1620
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p1

    move v9, v3

    move-wide v7, v4

    move v5, v2

    if-eqz p1, :cond_4e

    return-object v6

    .line 1623
    :cond_4e
    invoke-virtual {p0, v1, v5, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_55

    return-object v6

    .line 1626
    :cond_55
    invoke-virtual {p0, v1, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_5a
    move-wide/from16 v7, p4

    move/from16 v5, p6

    move/from16 v9, p7

    .line 1630
    iget-object v10, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1631
    iget-object v11, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-eqz v0, :cond_79

    if-eqz v10, :cond_79

    .line 1632
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    if-nez v11, :cond_79

    return-object v6

    :cond_79
    if-eqz v10, :cond_a9

    .line 1639
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez v1, :cond_8c

    .line 1640
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_8c

    return-object v6

    :cond_8c
    move-object v0, p0

    move-object v1, p1

    move v2, v5

    move-wide v4, v7

    move v3, v9

    .line 1643
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p1

    move v9, v3

    move-wide v7, v4

    move v5, v2

    if-eqz p1, :cond_9b

    return-object v6

    :cond_9b
    if-eqz v1, :cond_a4

    .line 1646
    invoke-virtual {p0, v1, v5, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_a4

    return-object v6

    .line 1650
    :cond_a4
    invoke-virtual {p0, v1, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_a9
    if-nez v0, :cond_d5

    const-wide v0, 0x100402000L

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d5

    .line 1653
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_be

    return-object v6

    :cond_be
    move-object v0, p0

    move v2, v5

    move-wide v4, v7

    move v3, v9

    .line 1655
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p1

    if-eqz p1, :cond_c9

    return-object v6

    .line 1658
    :cond_c9
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_d0

    return-object v6

    .line 1661
    :cond_d0
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_d5
    return-object v6
.end method

.method public getPackageOrSharedUser(I)Landroid/util/Pair;
    .registers 3

    .line 5765
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 5766
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 5767
    check-cast p0, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 5768
    :cond_12
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_1d

    .line 5769
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1d
    return-object v0
.end method

.method public getPackageStartability(ZLjava/lang/String;II)I
    .registers 7

    .line 3586
    invoke-static {p4}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    .line 3587
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 3588
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p3

    if-nez p3, :cond_3f

    .line 3589
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p3

    if-nez p3, :cond_1b

    goto :goto_3f

    :cond_1b
    if-eqz p1, :cond_25

    .line 3593
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p1

    if-nez p1, :cond_25

    const/4 p0, 0x2

    return p0

    .line 3597
    :cond_25
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x3

    return p0

    :cond_2f
    if-nez v0, :cond_3d

    .line 3601
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isEncryptionAware(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_3d

    const/4 p0, 0x4

    return p0

    :cond_3d
    const/4 p0, 0x0

    return p0

    :cond_3f
    :goto_3f
    const/4 p0, 0x1

    return p0
.end method

.method public getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 6

    const-wide/16 v0, -0x1

    .line 1686
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1688
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 1689
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    return-object p1
.end method

.method public getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 4

    .line 4144
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 4146
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_e

    :cond_d
    return-object p1

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3

    .line 1673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 5

    const-wide/16 v0, -0x1

    .line 1678
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1680
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getPackageStates()Landroid/util/ArrayMap;
    .registers 1

    .line 3543
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getPackageUid(Ljava/lang/String;JI)I
    .registers 11

    .line 5445
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 5446
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5447
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    const/4 v4, 0x0

    .line 5448
    const-string v5, "getPackageUid"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v5, v1

    move v4, v2

    move-object v1, p1

    move-wide v2, p2

    .line 5450
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p0

    return p0
.end method

.method public getPackageUidInternal(Ljava/lang/String;JII)I
    .registers 10

    .line 2710
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2711
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v1, :cond_39

    .line 2712
    invoke-static {v0, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2713
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 2714
    invoke-interface {v0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2715
    invoke-virtual {p0, v0, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_39

    .line 2716
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p0

    invoke-static {p4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_39
    const-wide v0, 0x100402000L

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_62

    .line 2720
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 2721
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 2722
    invoke-virtual {p0, p1, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-nez p0, :cond_62

    .line 2723
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {p4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_62
    const/4 p0, -0x1

    return p0
.end method

.method public getPackagesForAppId(I)Ljava/util/List;
    .registers 2

    .line 5691
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 5692
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_11

    .line 5693
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 5694
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5695
    :cond_11
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_25

    .line 5696
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 5697
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 5699
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5701
    :cond_22
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 5704
    :cond_25
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .registers 3

    .line 1989
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPackagesForUidInternal(II)[Ljava/lang/String;
    .registers 6

    .line 1993
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1994
    :goto_9
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1995
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 1998
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1999
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 2001
    :cond_21
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2002
    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;
    .registers 10

    .line 2008
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p3

    .line 2009
    instance-of v0, p3, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    if-eqz p4, :cond_e

    return-object v1

    .line 2013
    :cond_e
    check-cast p3, Lcom/android/server/pm/SharedUserSetting;

    .line 2015
    invoke-virtual {p3}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p3

    .line 2016
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p4

    .line 2017
    new-array v0, p4, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v1, p4, :cond_40

    .line 2020
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2021
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2022
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_3d

    add-int/lit8 v4, v2, 0x1

    .line 2023
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2026
    :cond_40
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 2027
    :cond_47
    instance-of p4, p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p4, :cond_66

    .line 2028
    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2029
    invoke-interface {p3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p4

    if-eqz p4, :cond_66

    .line 2030
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-nez p0, :cond_66

    .line 2031
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_66
    return-object v1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 15

    .line 4545
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4546
    :cond_d
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v6

    .line 4547
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get packages holding permissions"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const-wide v0, 0x100402000L

    and-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    :goto_2b
    move v8, v0

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2b

    .line 4552
    :goto_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4553
    array-length v0, p1

    new-array v4, v0, [Z

    .line 4554
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_43
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4555
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_59

    if-nez v8, :cond_59

    goto :goto_43

    :cond_59
    move-object v0, p0

    move-object v3, p1

    move-wide v5, v6

    move v7, p4

    .line 4558
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V

    move-wide v6, v5

    goto :goto_43

    .line 4561
    :cond_62
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    .line 3928
    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v3

    .line 3929
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_11
    if-ge v7, v4, :cond_112

    .line 3932
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v10, :cond_1f

    move-wide/from16 v12, p2

    goto/16 :goto_10a

    .line 3937
    :cond_1f
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    move-wide/from16 v12, p2

    invoke-static {v11, v12, v13}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v11

    if-nez v11, :cond_2d

    goto/16 :goto_10a

    .line 3941
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 3942
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v14

    if-nez v14, :cond_81

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v14

    if-eqz v14, :cond_3e

    goto :goto_81

    .line 3975
    :cond_3e
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    if-eqz v14, :cond_10a

    .line 3976
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesLibraries()Ljava/util/List;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_60

    .line 3977
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10a

    .line 3978
    :cond_60
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-eqz v11, :cond_68

    goto/16 :goto_10a

    :cond_68
    if-nez v8, :cond_6f

    .line 3982
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3984
    :cond_6f
    new-instance v11, Landroid/content/pm/VersionedPackage;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3985
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v5

    invoke-direct {v11, v14, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 3984
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10a

    .line 3944
    :cond_81
    :goto_81
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v5

    goto :goto_90

    :cond_8c
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v5

    .line 3945
    :goto_90
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_9b

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibrariesVersions()[J

    move-result-object v6

    goto :goto_9f

    .line 3946
    :cond_9b
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v6

    .line 3947
    :goto_9f
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v14

    if-eqz v14, :cond_aa

    .line 3948
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibrariesOptional()[Z

    move-result-object v14

    goto :goto_ab

    :cond_aa
    const/4 v14, 0x0

    .line 3950
    :goto_ab
    invoke-static {v5, v11}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_b2

    goto :goto_10a

    .line 3954
    :cond_b2
    aget-wide v15, v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v17

    cmp-long v6, v15, v17

    if-eqz v6, :cond_bd

    goto :goto_10a

    .line 3958
    :cond_bd
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_c4

    goto :goto_10a

    :cond_c4
    if-nez v8, :cond_cb

    .line 3962
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_cb
    if-nez v9, :cond_d2

    .line 3965
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3968
    :cond_d2
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3969
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    if-eqz v11, :cond_ee

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStaticSharedLibrary()Z

    move-result v11

    if-eqz v11, :cond_ee

    .line 3970
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getManifestPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3972
    :cond_ee
    new-instance v11, Landroid/content/pm/VersionedPackage;

    .line 3973
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v0

    invoke-direct {v11, v6, v0, v1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 3972
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v14, :cond_102

    .line 3974
    aget-boolean v0, v14, v5

    if-eqz v0, :cond_102

    const/4 v0, 0x1

    goto :goto_103

    :cond_102
    const/4 v0, 0x0

    :goto_103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10a
    :goto_10a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    goto/16 :goto_11

    .line 3990
    :cond_112
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPersistentApplications(ZI)Ljava/util/List;
    .registers 13

    .line 5564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5566
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 5567
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v8, 0x0

    move v9, v8

    :goto_11
    if-ge v9, v1, :cond_70

    .line 5569
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v9}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5570
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    const/high16 v4, 0x40000

    and-int/2addr v4, p2

    const/4 v5, 0x1

    if-eqz v4, :cond_33

    .line 5573
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v4

    if-nez v4, :cond_33

    move v4, v5

    goto :goto_34

    :cond_33
    move v4, v8

    :goto_34
    const/high16 v7, 0x80000

    and-int/2addr v7, p2

    if-eqz v7, :cond_40

    .line 5575
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v7

    if-eqz v7, :cond_40

    goto :goto_41

    :cond_40
    move v5, v8

    .line 5577
    :goto_41
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v7

    if-eqz v7, :cond_6d

    if-eqz p1, :cond_4f

    .line 5578
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_6d

    :cond_4f
    if-nez v4, :cond_53

    if-eqz v5, :cond_6d

    .line 5580
    :cond_53
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    if-eqz v7, :cond_6d

    int-to-long v3, p2

    .line 5583
    invoke-interface {v7, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 5582
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 5585
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_70
    return-object v0
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 2

    .line 3537
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateFlagsForUid(I)I
    .registers 6

    .line 4461
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4462
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 4465
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4466
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4468
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4469
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4470
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 4471
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_36

    .line 4472
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4473
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_31

    return v2

    .line 4476
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    return p0

    .line 4477
    :cond_36
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_48

    .line 4478
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4479
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_43

    return v2

    .line 4482
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    return p0

    :cond_48
    return v2
.end method

.method public getProcessesForUid(I)Landroid/util/ArrayMap;
    .registers 5

    .line 5741
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5742
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5744
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 5745
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 5746
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_23

    .line 5747
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 5748
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    .line 5749
    :cond_23
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    const/4 v2, 0x0

    if-eqz p1, :cond_3a

    .line 5750
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 5751
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    if-nez p0, :cond_31

    return-object v2

    .line 5752
    :cond_31
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    :cond_3a
    return-object v2
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 2038
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2040
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2042
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2043
    throw p0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .registers 15

    .line 4075
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_a

    return-object v6

    .line 4076
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4077
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v7

    const/4 v4, 0x0

    .line 4078
    const-string v5, "get provider info"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4080
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v3, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;

    move-result-object v9

    if-nez v9, :cond_24

    return-object v6

    .line 4087
    :cond_24
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_69

    .line 4088
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_35

    goto :goto_69

    .line 4092
    :cond_35
    invoke-static {v5, v9, v7, v8, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v3

    if-eqz v3, :cond_69

    const/4 v4, 0x4

    move-object v0, p0

    move-object v3, p1

    move v2, v1

    move-object v1, v5

    move v5, p4

    .line 4093
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_48

    return-object v6

    .line 4097
    :cond_48
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4099
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move v4, p4

    move-object v5, v1

    move-wide v1, v7

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_5a

    return-object v6

    :cond_5a
    move-object v7, v5

    move-object v5, v0

    .line 4103
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move v6, p4

    move-object v4, v3

    move-wide v2, v1

    move-object v1, v9

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0

    :cond_69
    :goto_69
    return-object v6
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 16

    .line 3766
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3767
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3768
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    const/4 v6, 0x0

    .line 3769
    const-string v7, "get receiver info"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3772
    iget-object p0, v2, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-nez p0, :cond_24

    return-object v1

    .line 3780
    :cond_24
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    if-eqz v10, :cond_5a

    .line 3781
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-nez p4, :cond_35

    goto :goto_5a

    .line 3785
    :cond_35
    invoke-static {v10, p0, p2, p3, v4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result p4

    if-eqz p4, :cond_5a

    const/4 v6, 0x2

    move-object v5, p1

    move v7, v4

    move v4, v3

    move-object v3, v10

    .line 3786
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    move v4, v7

    if-eqz p1, :cond_48

    return-object v1

    :cond_48
    move v7, v4

    .line 3789
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    .line 3790
    invoke-interface {v3, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    move-object v5, p0

    move-object v10, v3

    move v9, v7

    move-wide v6, p2

    .line 3789
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_5a
    :goto_5a
    return-object v1
.end method

.method public getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3555
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .registers 11

    .line 1822
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1823
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1824
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    const/4 v4, 0x0

    .line 1825
    const-string v5, "get service info"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    move v5, v1

    move v4, v2

    move-object v1, p1

    move-wide v2, p2

    .line 1828
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;
    .registers 15

    .line 1833
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_a

    return-object v0

    .line 1842
    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    move-object v3, v2

    move-object v2, v1

    .line 1843
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    move-object v8, v2

    move v2, v1

    move-object v1, v8

    move-object v8, v3

    if-eqz v2, :cond_4c

    .line 1844
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_33

    return-object v0

    :cond_33
    const/4 v6, 0x3

    move-object v2, p0

    move-object v5, p1

    move v7, p4

    move v4, p5

    .line 1846
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-eqz p0, :cond_3f

    return-object v0

    .line 1851
    :cond_3f
    invoke-interface {v3, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    move v6, p4

    move-object v7, v3

    move-object v2, v8

    move-wide v3, p2

    .line 1850
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0

    :cond_4c
    return-object v0
.end method

.method public getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 41

    move-object/from16 v0, p0

    move/from16 v5, p4

    .line 3799
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_e

    return-object v8

    .line 3800
    :cond_e
    const-string/jumbo v1, "userId must be >= 0"

    invoke-static {v5, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 3801
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3802
    invoke-virtual {v0, v9}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    return-object v8

    :cond_1f
    move-wide/from16 v1, p2

    .line 3806
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v10

    .line 3808
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    .line 3809
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    .line 3811
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_59

    move-object/from16 v1, p1

    .line 3813
    invoke-virtual {v0, v1, v9, v5, v12}, Lcom/android/server/pm/ComputerEngine;->canRequestPackageInstalls(Ljava/lang/String;IIZ)Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.REQUEST_DELETE_PACKAGES"

    .line 3815
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    .line 3817
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_57

    goto :goto_59

    :cond_57
    move v13, v12

    goto :goto_5b

    :cond_59
    :goto_59
    const/4 v1, 0x1

    move v13, v1

    .line 3821
    :goto_5b
    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v14

    .line 3823
    invoke-virtual {v14}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v15

    move-object v2, v8

    move v1, v12

    :goto_65
    if-ge v1, v15, :cond_147

    .line 3825
    invoke-virtual {v14, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v3, :cond_75

    move/from16 v32, v1

    move v4, v9

    move-wide v0, v10

    goto/16 :goto_13c

    .line 3830
    :cond_75
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    move-object/from16 v16, v2

    move v2, v12

    :goto_7c
    if-ge v2, v4, :cond_94

    .line 3832
    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    if-nez v13, :cond_9a

    .line 3833
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v6

    if-nez v6, :cond_94

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v6

    if-eqz v6, :cond_9a

    :cond_94
    move/from16 v32, v1

    move v4, v9

    move-wide v0, v10

    goto/16 :goto_13a

    .line 3836
    :cond_9a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3837
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v28

    move v6, v1

    .line 3840
    :try_start_a3
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move/from16 v20, v2

    move-object v7, v3

    .line 3841
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    const-wide/32 v21, 0x4000000

    or-long v21, v10, v21

    move/from16 v23, v6

    .line 3843
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move/from16 v34, v4

    move-object/from16 v33, v7

    move/from16 v35, v20

    move/from16 v32, v23

    move v7, v5

    move-wide/from16 v4, v21

    .line 3839
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_c8
    .catchall {:try_start_a3 .. :try_end_c8} :catchall_135

    if-nez v1, :cond_d0

    .line 3848
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v9

    move-wide v0, v10

    goto :goto_125

    :cond_d0
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3850
    new-instance v20, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 3851
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v23

    .line 3852
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v25

    .line 3853
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v27

    .line 3854
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f6

    move-object/from16 v29, v8

    goto :goto_101

    .line 3856
    :cond_f6
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v29, v0

    .line 3857
    :goto_101
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v30

    move-object/from16 v0, p0

    move/from16 v5, p4

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v17

    .line 3858
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v31

    move-wide v0, v2

    invoke-direct/range {v20 .. v31}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;ZLandroid/util/Pair;)V

    move-object/from16 v2, v20

    if-nez v16, :cond_11e

    .line 3860
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_11e
    move-object/from16 v3, v16

    .line 3862
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v3

    :goto_125
    add-int/lit8 v2, v35, 0x1

    move/from16 v5, p4

    move-wide v10, v0

    move v9, v4

    move/from16 v1, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    move-object/from16 v0, p0

    goto/16 :goto_7c

    :catchall_135
    move-exception v0

    .line 3848
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3849
    throw v0

    :goto_13a
    move-object/from16 v2, v16

    :goto_13c
    add-int/lit8 v3, v32, 0x1

    move/from16 v5, p4

    move-wide v10, v0

    move v1, v3

    move v9, v4

    move-object/from16 v0, p0

    goto/16 :goto_65

    :cond_147
    if-eqz v2, :cond_14f

    .line 3866
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_14f
    return-object v8
.end method

.method public getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    .line 3562
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0}, Lcom/android/server/pm/SharedLibrariesRead;->getAll()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .registers 4

    .line 1858
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/SharedLibrariesRead;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 2

    .line 5801
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromAppId(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8

    .line 5608
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 5609
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_4d

    .line 5613
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5614
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 5615
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    .line 5616
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_23
    if-ge v1, p1, :cond_41

    .line 5619
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5620
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_3e

    add-int/lit8 v4, v2, 0x1

    .line 5621
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 5624
    :cond_41
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_4a

    return-object p0

    .line 5625
    :cond_4a
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 5610
    :cond_4d
    :goto_4d
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0
.end method

.method public getSharedUsers()Landroid/util/ArrayMap;
    .registers 1

    .line 5898
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUsers()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getSigningDetails(I)Landroid/content/pm/SigningDetails;
    .registers 2

    .line 2977
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2978
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 2980
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_17

    .line 2981
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0

    .line 2982
    :cond_17
    instance-of p1, p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p1, :cond_22

    .line 2983
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2984
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0

    .line 2987
    :cond_22
    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .registers 2

    .line 2969
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 2973
    :cond_c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0
.end method

.method public final getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;
    .registers 6

    .line 4209
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4210
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return-object v0

    .line 4214
    :cond_e
    instance-of v1, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_20

    .line 4215
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4216
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-object v0

    .line 4219
    :cond_1b
    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0

    .line 4220
    :cond_20
    instance-of v1, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_32

    .line 4221
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4222
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_2d

    return-object v0

    .line 4225
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0

    :cond_32
    return-object v0
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 5307
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5308
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5309
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v2, :cond_4b

    .line 5311
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5310
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 5316
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_3b

    const/16 v1, 0x3e8

    if-ne v1, v0, :cond_33

    goto :goto_3b

    .line 5318
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "May not access signing KeySet of other apps."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5320
    :cond_3b
    :goto_3b
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5321
    new-instance v0, Landroid/content/pm/KeySet;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 5312
    :cond_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeySet requested for unknown package: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5314
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSystemSharedLibraryNamesAndPaths()Landroid/util/ArrayMap;
    .registers 17

    .line 4113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    .line 4114
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 4115
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_6c

    .line 4117
    invoke-virtual {v0, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v5, :cond_1a

    goto :goto_69

    .line 4121
    :cond_1a
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v6

    move v7, v3

    :goto_1f
    if-ge v7, v6, :cond_69

    .line 4123
    invoke-virtual {v5, v7}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SharedLibraryInfo;

    .line 4124
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v9

    if-nez v9, :cond_39

    .line 4125
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 4129
    :cond_39
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p0

    invoke-virtual {v10, v9}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-eqz v11, :cond_66

    .line 4130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 4131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const-wide/32 v14, 0x4000000

    .line 4130
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v9

    if-nez v9, :cond_66

    .line 4133
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_69
    :goto_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_6c
    return-object v1
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .registers 5

    .line 3718
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_26

    .line 3719
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_26

    .line 3722
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3723
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 3722
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v0

    .line 3726
    :cond_1d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 4419
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4420
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    return v0

    .line 4423
    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromId(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 4425
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4424
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-nez p0, :cond_24

    .line 4426
    iget p0, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return p0

    :cond_24
    return v0
.end method

.method public getUidTargetSdkVersion(I)I
    .registers 6

    .line 5710
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5711
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5713
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 5714
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 5715
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    const/16 v0, 0x2710

    if-eqz p1, :cond_42

    .line 5716
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 5718
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 5720
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_25
    if-ge v1, p1, :cond_41

    .line 5722
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5723
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 5724
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v2

    if-ge v2, v0, :cond_3e

    move v0, v2

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_41
    return v0

    .line 5729
    :cond_42
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_57

    .line 5730
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 5731
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 5732
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_57
    return v0
.end method

.method public final getUsed()I
    .registers 1

    .line 495
    iget p0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return p0
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .registers 1

    .line 5904
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .registers 9

    .line 4969
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "when asking about packages for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4972
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 4973
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2

    if-nez p2, :cond_30

    .line 4976
    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    return-object p0

    .line 4974
    :cond_30
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVersion()I
    .registers 1

    .line 480
    iget p0, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    return p0
.end method

.method public getVisibilityAllowList(Ljava/lang/String;I)[I
    .registers 4

    .line 5389
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 5391
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;
    .registers 5

    const/16 v0, 0x3e8

    .line 5379
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 5383
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getVolumePackages(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 5892
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final hasCrossUserPermission(IIIZZ)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p5, :cond_6

    if-ne p3, p2, :cond_6

    return v0

    .line 2213
    :cond_6
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p2

    if-eqz p2, :cond_d

    return v0

    .line 2216
    :cond_d
    const-string p2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_16

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_26

    .line 2218
    :cond_16
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_26

    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    .line 2220
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :cond_26
    :goto_26
    if-nez v0, :cond_39

    .line 2222
    invoke-static {p1}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 2223
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/ComputerEngine;->checkIsolatedOwnerHasPermission(IZ)Z

    move-result p0

    return p0

    :cond_39
    return v0
.end method

.method public final hasNonNegativePriority(Ljava/util/List;)Z
    .registers 3

    .line 2234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_13

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget p0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ltz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v0
.end method

.method public final hasPermission(Ljava/lang/String;I)Z
    .registers 4

    .line 2243
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 8

    .line 4263
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 4267
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4268
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4269
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 4271
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_3d

    :cond_25
    if-eqz p3, :cond_34

    const/4 p0, 0x1

    if-eq p3, p0, :cond_2b

    return v0

    .line 4278
    :cond_2b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result p0

    return p0

    .line 4276
    :cond_34
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result p0

    return p0

    :cond_3d
    :goto_3d
    return v0
.end method

.method public hasUidSigningCertificate(I[BI)Z
    .registers 6

    .line 4287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4288
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4290
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_10

    return p1

    :cond_10
    if-eqz p3, :cond_1b

    const/4 v0, 0x1

    if-eq p3, v0, :cond_16

    return p1

    .line 4298
    :cond_16
    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result p0

    return p0

    .line 4296
    :cond_1b
    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result p0

    return p0
.end method

.method public instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .registers 2

    .line 3629
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz p0, :cond_12

    .line 3630
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationEffectivelyEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5

    const/4 v0, 0x0

    .line 5266
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5267
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 5266
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_19

    .line 5269
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_14

    return v0

    .line 5274
    :cond_14
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result p0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_1d

    return p0

    :cond_19
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1d

    return p0

    :catch_1d
    :cond_1d
    return v0
.end method

.method public final isCallerFromManagedUserOrProfile(I)Z
    .registers 3

    .line 2279
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_14

    .line 2280
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 5467
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_f

    return v0

    .line 5473
    :cond_f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5472
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 5475
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {p0, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    return v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 2261
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public final isCallerSameApp(Ljava/lang/String;IZ)Z
    .registers 7

    .line 2266
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    if-eqz p1, :cond_17

    .line 2267
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2268
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    return v2

    :cond_17
    return v1

    .line 2270
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz p3, :cond_2c

    .line 2271
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 2272
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    :cond_2c
    if-eqz p1, :cond_39

    .line 2275
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p1

    if-ne p0, p1, :cond_39

    return v2

    :cond_39
    return v1
.end method

.method public isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;Landroid/os/UserHandle;)Z
    .registers 6

    const/4 v0, 0x0

    .line 5240
    :try_start_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 5241
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 5242
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5243
    invoke-virtual {v2, v1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_17

    .line 5245
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_1a

    return v0

    :cond_17
    if-eq v1, v2, :cond_1a

    return v0

    .line 5252
    :cond_1a
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5253
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 5252
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p0

    if-nez p0, :cond_2b

    .line 5255
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result p0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2e

    return p0

    :cond_2b
    if-ne p0, v2, :cond_2e

    return v2

    :catch_2e
    :cond_2e
    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .registers 4

    const/4 v0, 0x1

    .line 2284
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x3

    .line 2287
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    const/4 v0, 0x4

    .line 2290
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z
    .registers 8

    const/high16 v0, 0x200000

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2b

    .line 2296
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-nez p0, :cond_11

    return v2

    .line 2301
    :cond_11
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1a

    move p1, v3

    goto :goto_1b

    :cond_1a
    move p1, v2

    .line 2303
    :goto_1b
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_24

    move p0, v3

    goto :goto_25

    :cond_24
    move p0, v2

    :goto_25
    if-eqz p1, :cond_2a

    if-eqz p0, :cond_2a

    return v3

    :cond_2a
    return v2

    :cond_2b
    const/4 v4, 0x2

    if-ne p2, v4, :cond_51

    .line 2307
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-nez p0, :cond_37

    return v2

    .line 2312
    :cond_37
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_40

    move p1, v3

    goto :goto_41

    :cond_40
    move p1, v2

    .line 2314
    :goto_41
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_4a

    move p0, v3

    goto :goto_4b

    :cond_4a
    move p0, v2

    :goto_4b
    if-eqz p1, :cond_50

    if-nez p0, :cond_50

    return v3

    :cond_50
    return v2

    :cond_51
    const/4 v0, 0x3

    if-ne p2, v0, :cond_65

    .line 2318
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 2320
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_64

    return v3

    :cond_64
    return v2

    :cond_65
    const/4 v0, 0x4

    if-ne p2, v0, :cond_79

    .line 2322
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;

    move-result-object p0

    if-eqz p0, :cond_78

    .line 2324
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_78

    return v3

    :cond_78
    return v2

    :cond_79
    if-nez p2, :cond_80

    .line 2326
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    :cond_80
    return v2
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 7

    .line 2343
    invoke-virtual {p1}, Landroid/content/Intent;->isImplicitImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isInstallDisabledForPackage(Ljava/lang/String;II)Z
    .registers 7

    .line 3910
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v2, "no_install_unknown_sources_globally"

    .line 3911
    invoke-virtual {v0, v2, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_25

    .line 3915
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    const/4 p3, 0x0

    if-eqz p0, :cond_24

    .line 3916
    invoke-interface {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;->getPackageTrustedToInstallApps(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_24

    return v1

    :cond_24
    return p3

    :cond_25
    :goto_25
    return v1
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 9

    .line 2348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 2349
    const-string v5, "isInstantApp"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2352
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .registers 4

    .line 2360
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isInstantAppInternalBody(Ljava/lang/String;II)Z
    .registers 5

    .line 2365
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2366
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p3

    .line 2368
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2371
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 2372
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result p1

    if-nez p1, :cond_2e

    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2374
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    .line 2373
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 2376
    :cond_2e
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    return p0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public final isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .registers 10

    .line 2384
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2387
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    .line 2390
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_14

    return v1

    .line 2393
    :cond_14
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1e

    return v1

    .line 2396
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_27

    return v1

    :cond_27
    if-nez p4, :cond_30

    .line 2399
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    return v1

    .line 2402
    :cond_30
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_47

    if-eqz p2, :cond_3e

    .line 2405
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_46

    .line 2406
    :cond_3e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_63

    :cond_46
    return v1

    .line 2410
    :cond_47
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_68

    .line 2412
    :cond_5c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_63

    return v1

    .line 2418
    :cond_63
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result p0

    return p0

    :cond_68
    :goto_68
    return v1
.end method

.method public isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move v3, v2

    goto :goto_d

    .line 2427
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2428
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    if-eqz v4, :cond_18

    move v4, v5

    goto :goto_19

    :cond_18
    move v4, v2

    .line 2429
    :goto_19
    const-string v6, "PackageManager"

    if-eqz v4, :cond_31

    .line 2430
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking if instant app resolution allowed, resolvedActivities = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move v7, v2

    :goto_32
    if-ge v7, v3, :cond_b7

    .line 2434
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2435
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2436
    iget-object v10, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    if-eqz v12, :cond_9b

    .line 2439
    iget-boolean v8, v8, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v8, :cond_76

    .line 2440
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v13, p1

    move/from16 v16, p3

    move-wide/from16 v14, p5

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 2442
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_75

    .line 2443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DENY instant app; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", approved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    return v2

    :cond_76
    move/from16 v8, p3

    .line 2449
    invoke-interface {v12, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_b3

    .line 2450
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_9a

    .line 2451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DENY instant app installed; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    return v2

    :cond_9b
    move/from16 v8, p3

    if-eqz v4, :cond_b3

    .line 2457
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_32

    :cond_b7
    return v5
.end method

.method public final isKnownIsolatedComputeApp(I)Z
    .registers 4

    .line 5781
    invoke-static {p1}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5784
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 5785
    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_18

    .line 5788
    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result p0

    if-ne p1, p0, :cond_18

    return v0

    .line 5792
    :cond_18
    const-class p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;

    .line 5793
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;

    if-eqz p0, :cond_29

    .line 5795
    invoke-interface {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;->getInferenceServiceUid()I

    move-result p0

    if-ne p1, p0, :cond_29

    return v0

    :cond_29
    return v1
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .registers 11

    .line 3609
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 3610
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v6, 0x0

    .line 3611
    const-string v7, "is package available"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3614
    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 3615
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 3616
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_2a

    return v1

    .line 3619
    :cond_2a
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    if-eqz p0, :cond_37

    const-wide/16 p1, 0x0

    .line 3621
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p0

    return p0

    :cond_37
    return v1
.end method

.method public isPackageQuarantinedForUser(Ljava/lang/String;I)Z
    .registers 3

    .line 4988
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result p0

    return p0
.end method

.method public isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 7

    .line 5326
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5327
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    :cond_c
    if-eqz p1, :cond_70

    if-nez p2, :cond_11

    goto :goto_70

    .line 5333
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5334
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eqz v1, :cond_43

    .line 5337
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5336
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_43

    .line 5341
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object p2

    .line 5342
    instance-of v0, p2, Lcom/android/server/pm/KeySetHandle;

    if-eqz v0, :cond_42

    .line 5343
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5344
    check-cast p2, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result p0

    return p0

    :cond_42
    return v2

    .line 5338
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeySet requested for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PackageManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    :goto_70
    return v2
.end method

.method public isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 7

    .line 5351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5352
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    :cond_c
    if-eqz p1, :cond_70

    if-nez p2, :cond_11

    goto :goto_70

    .line 5358
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5359
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eqz v1, :cond_43

    .line 5362
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5361
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_43

    .line 5366
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object p2

    .line 5367
    instance-of v0, p2, Lcom/android/server/pm/KeySetHandle;

    if-eqz v0, :cond_42

    .line 5368
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5369
    check-cast p2, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result p0

    return p0

    :cond_42
    return v2

    .line 5363
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeySet requested for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PackageManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5364
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    :goto_70
    return v2
.end method

.method public isPackageStoppedForUser(Ljava/lang/String;I)Z
    .registers 3

    .line 4994
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result p0

    return p0
.end method

.method public isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 3

    .line 4982
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p0

    return p0
.end method

.method public final isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 11

    .line 2466
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 2467
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    const-wide/32 v3, 0x10000

    and-long/2addr p4, v3

    const-wide/16 v3, 0x0

    cmp-long p4, p4, v3

    if-eqz p4, :cond_1a

    move p4, v2

    :goto_15
    move p5, p2

    move-object p2, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_1c

    :cond_1a
    move p4, v1

    goto :goto_15

    .line 2470
    :goto_1c
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    goto :goto_26

    .line 2473
    :cond_21
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2474
    :goto_26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2475
    iget-boolean p1, p1, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    if-eqz p1, :cond_2a

    return v2

    :cond_3b
    return v1
.end method

.method public final isRecentsAccessingChildProfiles(II)Z
    .registers 7

    .line 2483
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2484
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 2487
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2489
    :try_start_16
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2490
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2e

    if-eq v0, p1, :cond_24

    .line 2495
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 2493
    :cond_24
    :try_start_24
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2e

    .line 2495
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2e
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2496
    throw p0
.end method

.method public final isSameProfileGroup(II)Z
    .registers 5

    .line 2501
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2503
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 2505
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2506
    throw p0
.end method

.method public isSuspendingAnyPackages(Ljava/lang/String;II)Z
    .registers 5

    .line 5000
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    .line 5001
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5003
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    .line 5004
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 5005
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public isUidPrivileged(I)Z
    .registers 5

    .line 4489
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 4492
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4493
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4495
    :cond_16
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4496
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 4497
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_42

    .line 4498
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 4500
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 4501
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    move v0, v1

    :goto_2f
    if-ge v0, p1, :cond_4d

    .line 4503
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4504
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 p0, 0x1

    return p0

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 4508
    :cond_42
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_4d

    .line 4509
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 4510
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result p0

    return p0

    :cond_4d
    return v1
.end method

.method public final maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-wide/32 v2, 0x800000

    and-long v2, p4, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_13

    move v0, v11

    goto :goto_14

    :cond_13
    move v0, v10

    :goto_14
    const/4 v12, 0x0

    .line 1381
    const-string v13, "PackageManager"

    if-nez v0, :cond_97

    .line 1382
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const-wide/32 v2, 0x1800040

    or-long v4, p4, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    move v15, v6

    move-object v6, v1

    .line 1390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    :goto_31
    if-ltz v1, :cond_98

    .line 1391
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1392
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1393
    iget-object v3, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1394
    invoke-interface {v3, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 1395
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v1, v3

    move v5, v15

    move-wide/from16 v3, p4

    move-object v15, v2

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1397
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_75

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    move v0, v10

    goto :goto_9a

    .line 1403
    :cond_77
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_8f

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app not approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    move v0, v11

    :goto_90
    move-object v14, v12

    goto :goto_9a

    :cond_92
    add-int/lit8 v1, v1, -0x1

    move/from16 v15, p6

    goto :goto_31

    :cond_97
    move-object v6, v1

    :cond_98
    move v0, v10

    goto :goto_90

    :goto_9a
    if-nez v0, :cond_f5

    if-nez v14, :cond_de

    .line 1418
    const-string/jumbo v0, "resolveEphemeral"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1419
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1421
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v0

    move-wide v3, v8

    .line 1422
    new-instance v8, Landroid/content/pm/InstantAppRequest;

    const/16 v16, 0x0

    .line 1427
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v18

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    const/4 v13, 0x0

    move/from16 v15, p6

    move/from16 v17, p7

    move/from16 v14, p8

    move-wide/from16 p4, v1

    move-wide v1, v3

    move v3, v10

    move v4, v11

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v8 .. v19}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 1428
    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v9, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v6, v5, v9, v8}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseOne(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v12

    .line 1430
    invoke-static/range {p4 .. p5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_fb

    :cond_de
    move/from16 v15, p6

    move-wide v1, v8

    move v3, v10

    move v4, v11

    move-object v0, v13

    .line 1437
    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1438
    new-instance v8, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v11, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v13, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v8 .. v13}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    move-object v12, v8

    goto :goto_fb

    :cond_f5
    move/from16 v15, p6

    move-wide v1, v8

    move v3, v10

    move v4, v11

    move-object v0, v13

    .line 1443
    :goto_fb
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-eqz v5, :cond_105

    if-nez v12, :cond_105

    goto/16 :goto_181

    .line 1446
    :cond_105
    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1447
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_181

    .line 1448
    invoke-interface {v5, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 1449
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 1448
    invoke-static {v8, v9, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v8

    if-nez v8, :cond_122

    goto :goto_181

    .line 1452
    :cond_122
    new-instance v8, Landroid/content/pm/ResolveInfo;

    iget-object v9, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v8, v9}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1454
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1455
    invoke-interface {v5, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 1453
    invoke-static {v6, v1, v2, v5, v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const v1, 0x588000

    .line 1456
    iput v1, v8, Landroid/content/pm/ResolveInfo;->match:I

    .line 1459
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_152

    .line 1461
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1463
    :cond_152
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_16f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16f

    .line 1464
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1464
    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1467
    :cond_16f
    iput-boolean v4, v8, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1469
    iput-boolean v4, v8, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1470
    iput-object v12, v8, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1471
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_17e

    .line 1472
    const-string v1, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_17e
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_181
    :goto_181
    return-object v7
.end method

.method public queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 16

    .line 4847
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eqz p1, :cond_c

    .line 4848
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    :goto_a
    move v2, v0

    goto :goto_11

    .line 4849
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_a

    :goto_11
    const/4 v4, 0x0

    .line 4850
    const-string/jumbo v5, "queryContentProviders"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4852
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 4853
    :cond_27
    invoke-virtual {p0, p3, p4, v2}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v7

    move v9, v2

    .line 4855
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move-object v5, p5

    invoke-interface/range {v2 .. v9}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/util/List;

    move-result-object v0

    move v2, v9

    const/4 p1, 0x0

    if-nez v0, :cond_3c

    move v3, p1

    goto :goto_41

    .line 4857
    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    move v3, p2

    :goto_41
    const/4 p2, 0x0

    move v4, p1

    move-object v5, p2

    :goto_44
    if-ge v4, v3, :cond_86

    .line 4859
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/pm/ProviderInfo;

    .line 4860
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object p2, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 4861
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 4860
    invoke-static {p1, v6, v7, v8, v2}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_83

    .line 4865
    :cond_5c
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object p2, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 4866
    new-instance p3, Landroid/content/ComponentName;

    iget-object p2, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p4, v6, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {p3, p2, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x4

    move p2, v1

    move p5, v2

    .line 4868
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    if-eqz p1, :cond_77

    goto :goto_83

    :cond_77
    if-nez v5, :cond_80

    .line 4873
    new-instance v5, Ljava/util/ArrayList;

    sub-int p1, v3, v4

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4875
    :cond_80
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_86
    if-eqz v5, :cond_93

    .line 4879
    sget-object p0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4880
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 4883
    :cond_93
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .registers 14

    .line 4911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4912
    const-string/jumbo v5, "queryInstrumentationAsUser"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move p0, v1

    .line 4914
    iget-object p3, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p3, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p3

    if-nez p3, :cond_1c

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 4915
    :cond_1c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4917
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    const/4 v1, 0x0

    move v9, v1

    :goto_29
    if-ge v9, v8, :cond_6e

    .line 4919
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v9}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    if-eqz p1, :cond_3f

    .line 4921
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 4922
    :cond_3f
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4923
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4924
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    if-eqz v4, :cond_6b

    if-eqz v7, :cond_6b

    .line 4926
    invoke-virtual {v0, v7, p0, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_6b

    .line 4929
    :cond_5a
    invoke-interface {v7, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    move v6, v2

    move-object v2, v4

    int-to-long v3, p2

    .line 4930
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    move v2, v6

    if-eqz v1, :cond_6b

    .line 4933
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    :goto_6b
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 4938
    :cond_6e
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 18

    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v9, p5

    .line 636
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 19

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v7, p5

    move/from16 v9, p6

    .line 628
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;
    .registers 34

    move-object/from16 v0, p0

    move/from16 v6, p7

    move/from16 v2, p9

    .line 503
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_11
    const-wide v3, 0x200000000L

    or-long v7, p3, v3

    .line 508
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activities"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_45

    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v11, p1

    move-object v12, v1

    move-object v1, v0

    goto :goto_4a

    :cond_45
    const/4 v1, 0x0

    move-object v12, v0

    move-object v11, v1

    move-object/from16 v1, p1

    :goto_4a
    if-nez v12, :cond_58

    if-eqz v9, :cond_4f

    goto :goto_58

    :cond_4f
    move-wide v4, v7

    const/4 v7, 0x0

    :goto_51
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v2, p9

    goto :goto_5b

    :cond_58
    :goto_58
    move-wide v4, v7

    const/4 v7, 0x1

    goto :goto_51

    .line 525
    :goto_5b
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v8

    move v3, v2

    move-wide/from16 v20, v4

    move/from16 v5, p10

    move v4, v6

    move v6, v7

    move v7, v8

    move-object v8, v1

    move-wide/from16 v1, v20

    .line 523
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide v1

    move-object v7, v0

    move v15, v3

    .line 528
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v3, 0x0

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v4, p10

    move-wide v13, v1

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move v4, v5

    .line 530
    iget-object v2, v7, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 531
    iput-object v7, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    .line 533
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz v12, :cond_15a

    .line 536
    invoke-virtual {v7, v12, v13, v14, v15}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_150

    const-wide/32 v5, 0x800000

    and-long/2addr v5, v13

    const-wide/16 v16, 0x0

    cmp-long v5, v5, v16

    if-eqz v5, :cond_a1

    const/4 v5, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v5, 0x0

    :goto_a2
    const-wide/32 v18, 0x1000000

    and-long v18, v13, v18

    cmp-long v6, v18, v16

    if-eqz v6, :cond_ad

    const/4 v6, 0x1

    goto :goto_ae

    :cond_ad
    const/4 v6, 0x0

    :goto_ae
    const-wide/32 v18, 0x2000000

    and-long v13, v13, v18

    cmp-long v8, v13, v16

    if-eqz v8, :cond_b9

    const/4 v8, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v8, 0x0

    :goto_ba
    if-eqz v10, :cond_be

    const/4 v13, 0x1

    goto :goto_bf

    :cond_be
    const/4 v13, 0x0

    .line 551
    :goto_bf
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 552
    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_d3

    const/4 v14, 0x1

    :goto_d0
    move-object/from16 p4, v1

    goto :goto_d5

    :cond_d3
    const/4 v14, 0x0

    goto :goto_d0

    .line 555
    :goto_d5
    iget v1, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v16, v1, v16

    if-eqz v16, :cond_e0

    const/16 v16, 0x1

    goto :goto_e2

    :cond_e0
    const/16 v16, 0x0

    :goto_e2
    if-eqz v16, :cond_ec

    const/high16 v17, 0x200000

    and-int v1, v1, v17

    if-nez v1, :cond_ec

    const/4 v1, 0x1

    goto :goto_ed

    :cond_ec
    const/4 v1, 0x0

    :goto_ed
    if-eqz v16, :cond_f6

    if-eqz v8, :cond_f4

    if-nez v1, :cond_f4

    goto :goto_f6

    :cond_f4
    const/4 v1, 0x0

    goto :goto_f7

    :cond_f6
    :goto_f6
    const/4 v1, 0x1

    :goto_f7
    if-nez v12, :cond_107

    if-nez v5, :cond_ff

    if-nez v13, :cond_ff

    if-nez v14, :cond_105

    :cond_ff
    if-eqz v6, :cond_107

    if-eqz v13, :cond_107

    if-eqz v1, :cond_107

    :cond_105
    const/4 v1, 0x1

    goto :goto_108

    :cond_107
    const/4 v1, 0x0

    :goto_108
    if-eqz p10, :cond_116

    .line 570
    iget-boolean v5, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v5, :cond_116

    .line 572
    invoke-virtual {v7, v9, v4}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_116

    const/4 v5, 0x1

    goto :goto_117

    :cond_116
    const/4 v5, 0x0

    :goto_117
    if-eqz p10, :cond_11b

    if-eqz v5, :cond_131

    :cond_11b
    if-nez v14, :cond_131

    if-nez v13, :cond_131

    .line 573
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x3e8

    .line 578
    invoke-virtual {v7, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 577
    invoke-virtual {v7, v5, v4, v15}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_131

    const/4 v5, 0x1

    goto :goto_132

    :cond_131
    const/4 v5, 0x0

    :goto_132
    if-nez v1, :cond_152

    if-nez v5, :cond_152

    .line 581
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 582
    iput-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 583
    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 584
    new-instance v2, Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 585
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-static {v0, v2}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_152

    :cond_150
    move-object/from16 p4, v1

    :cond_152
    :goto_152
    move-object/from16 v7, p4

    move-object v13, v0

    move-object v14, v10

    const/4 v12, 0x0

    move v10, v4

    :goto_158
    move-object v1, v2

    goto :goto_1a3

    :cond_15a
    move-object/from16 v2, p2

    move/from16 v8, p11

    move v5, v4

    move-wide v3, v13

    move v6, v15

    const/4 v12, 0x1

    move-object v13, v0

    move-object v0, v7

    move/from16 v7, p10

    .line 591
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v9

    move-object v14, v10

    move v10, v5

    move-wide v4, v3

    .line 594
    iget-object v2, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    if-eqz v2, :cond_173

    move-object v7, v1

    goto :goto_19f

    .line 598
    :cond_173
    iget-boolean v2, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    if-eqz v2, :cond_18f

    .line 599
    invoke-virtual {v0, v10}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v8

    move-object v7, v1

    .line 601
    iget-object v1, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v3, p2

    move-object v2, v7

    move/from16 v7, p10

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ComputerEngine;->maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;

    move-result-object v1

    move-object v7, v2

    iput-object v1, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    goto :goto_190

    :cond_18f
    move-object v7, v1

    .line 605
    :goto_190
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    if-eqz v0, :cond_19b

    .line 606
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 608
    :cond_19b
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object v2, v0

    const/4 v12, 0x0

    .line 610
    :goto_19f
    invoke-static {v13, v2}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_158

    :goto_1a3
    if-eqz v11, :cond_1aa

    .line 615
    iput-object v11, v13, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 616
    invoke-static {v13, v1}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :cond_1aa
    if-eqz v12, :cond_1ad

    return-object v1

    :cond_1ad
    move-object/from16 v0, p0

    move/from16 v6, p9

    move/from16 v5, p10

    move/from16 v3, p11

    move v4, v10

    move-object v2, v14

    .line 619
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;
    .registers 30

    move-object/from16 v1, p0

    move/from16 v3, p6

    .line 759
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    if-nez p9, :cond_73

    .line 763
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 766
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move v6, v3

    move-object v3, v4

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    move v3, v6

    if-eqz v0, :cond_31

    .line 775
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_31
    const/4 v4, 0x0

    move-wide/from16 v5, p3

    move-object v0, v1

    move-object v2, v13

    move-object/from16 v1, p1

    .line 778
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v12

    move-object v1, v0

    .line 781
    invoke-virtual {v1, v13}, Lcom/android/server/pm/ComputerEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v8

    .line 788
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 790
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move/from16 v9, p7

    move-object/from16 v7, p9

    .line 788
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    move v3, v4

    move-object v8, v7

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6a

    :cond_69
    const/4 v11, 0x1

    :cond_6a
    move/from16 v16, v12

    move/from16 v12, p5

    move-object v14, v0

    move/from16 v17, v11

    goto/16 :goto_e8

    :cond_73
    move-object/from16 v8, p9

    const/16 v0, 0x3e8

    .line 794
    invoke-virtual {v1, v8, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 796
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_ae

    move/from16 v12, p5

    if-nez p7, :cond_8d

    .line 797
    invoke-virtual {v1, v0, v12, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_b0

    :cond_8d
    move-object v2, v0

    .line 798
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 799
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v6

    move-object/from16 v2, p1

    move-wide/from16 v4, p3

    move v7, v3

    move-object/from16 v3, p2

    .line 798
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    move v3, v7

    if-eqz v0, :cond_b0

    .line 803
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b0

    :cond_ae
    move/from16 v12, p5

    .line 806
    :cond_b0
    :goto_b0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c4

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-wide/from16 v5, p3

    move-object v0, v1

    move-object/from16 v1, p1

    .line 809
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v2

    move-object v1, v0

    move v14, v2

    goto :goto_c5

    :cond_c4
    move v14, v11

    .line 817
    :goto_c5
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 819
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    move/from16 v4, p6

    move/from16 v9, p7

    move-object/from16 v7, p9

    .line 817
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    move v3, v4

    move/from16 v16, v14

    move/from16 v17, v11

    move-object v14, v0

    .line 828
    :goto_e8
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 832
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v15

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 833
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    move-wide/from16 v8, p3

    move/from16 v7, p8

    move-object/from16 v6, p9

    move-object/from16 v5, p10

    move-object v2, v1

    move v10, v3

    move-object/from16 v18, v4

    move v11, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v12, p7

    move-object v1, v0

    .line 829
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->combineFilterAndCreateQueryActivitiesResponse(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIIZLjava/util/List;Ljava/util/List;ZZZLjava/util/function/Function;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;
    .registers 28

    move-object/from16 v0, p0

    move/from16 v2, p5

    move/from16 v6, p6

    .line 646
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 647
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent services"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 652
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    .line 653
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v8

    move-object v10, v0

    move v11, v3

    .line 656
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v4, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move-object v12, v0

    move v6, v5

    .line 658
    iget-object v0, v10, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 659
    iput-object v10, v12, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_66

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    move-object/from16 v13, p1

    goto :goto_6a

    :cond_66
    const/4 v1, 0x0

    move-object v13, v1

    move-object/from16 v1, p1

    .line 670
    :goto_6a
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz v0, :cond_ed

    .line 672
    invoke-virtual {v10, v0, v8, v9, v11}, Lcom/android/server/pm/ComputerEngine;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_f9

    const-wide/32 v3, 0x800000

    and-long/2addr v3, v8

    const-wide/16 v14, 0x0

    cmp-long v3, v3, v14

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_82

    move v3, v5

    goto :goto_83

    :cond_82
    move v3, v4

    :goto_83
    const-wide/32 v16, 0x1000000

    and-long v8, v8, v16

    cmp-long v8, v8, v14

    if-eqz v8, :cond_8e

    move v8, v5

    goto :goto_8f

    :cond_8e
    move v8, v4

    :goto_8f
    if-eqz v7, :cond_93

    move v9, v5

    goto :goto_94

    :cond_93
    move v9, v4

    .line 685
    :goto_94
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 686
    iget-object v7, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_a6

    move v14, v5

    goto :goto_a7

    :cond_a6
    move v14, v4

    .line 689
    :goto_a7
    iget v15, v1, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v15, v15, v16

    if-nez v15, :cond_b1

    move v15, v5

    goto :goto_b2

    :cond_b1
    move v15, v4

    :goto_b2
    if-nez v0, :cond_c2

    if-nez v3, :cond_ba

    if-nez v9, :cond_ba

    if-nez v14, :cond_c0

    :cond_ba
    if-eqz v8, :cond_c2

    if-eqz v9, :cond_c2

    if-eqz v15, :cond_c2

    :cond_c0
    move v0, v5

    goto :goto_c3

    :cond_c2
    move v0, v4

    :goto_c3
    if-nez v14, :cond_d6

    if-nez v9, :cond_d6

    .line 697
    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x3e8

    .line 699
    invoke-virtual {v10, v3, v7}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 698
    invoke-virtual {v10, v3, v6, v11}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_d6

    move v4, v5

    :cond_d6
    if-nez v0, :cond_f9

    if-nez v4, :cond_f9

    .line 702
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 703
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 704
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 705
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-static {v12, v2}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_f9

    :cond_ed
    move-object/from16 v2, p2

    move-wide v3, v8

    move-object v0, v10

    move v5, v11

    .line 710
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 712
    invoke-static {v12, v2}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :cond_f9
    :goto_f9
    if-eqz v13, :cond_100

    .line 717
    iput-object v13, v12, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 718
    invoke-static {v12, v2}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :cond_100
    return-object v2
.end method

.method public queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;
    .registers 16

    .line 728
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 730
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    move-object v1, v2

    if-nez p0, :cond_17

    .line 733
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 735
    :cond_17
    invoke-virtual {v1, p0, p7, v7, p6}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1c
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v7, p5

    .line 738
    iget-object p0, v1, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz p0, :cond_3f

    .line 740
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 741
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    .line 740
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3a

    .line 744
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 746
    :cond_3a
    invoke-virtual {v1, p0, p7, v7, p6}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 749
    :cond_3f
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public querySyncProviders(ZLjava/util/List;Ljava/util/List;)V
    .registers 15

    .line 4815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_6a

    .line 4818
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4819
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4820
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 4821
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->querySyncProviders(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;ZI)V

    .line 4822
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_26
    if-ltz p0, :cond_58

    .line 4823
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    .line 4824
    iget-object v0, v2, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4825
    new-instance v8, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4827
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x4

    move-object v5, v2

    move v10, v6

    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    move v6, v10

    if-nez p1, :cond_4f

    goto :goto_55

    .line 4831
    :cond_4f
    invoke-interface {v4, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4832
    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_55
    add-int/lit8 p0, p0, -0x1

    goto :goto_26

    .line 4834
    :cond_58
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_61

    .line 4835
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4837
    :cond_61
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6a

    .line 4838
    invoke-interface {p3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6a
    :goto_6a
    return-void
.end method

.method public resolveComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 430
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 13

    .line 4736
    invoke-static {p1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4737
    invoke-static {p1, p4}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v5

    .line 4739
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1, v5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p1

    const/4 v6, 0x0

    if-nez p1, :cond_12

    return-object v6

    .line 4740
    :cond_12
    invoke-virtual {p0, p2, p3, v5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v3

    .line 4742
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    move p2, v5

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz v0, :cond_37

    .line 4747
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    if-eq p2, p4, :cond_37

    .line 4748
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4749
    invoke-virtual {p4, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4751
    invoke-interface {p4, p5, v0, p2, p1}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p4

    goto :goto_38

    :cond_37
    move p4, p3

    :goto_38
    if-nez p4, :cond_67

    .line 4757
    invoke-static {v2}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5b

    .line 4758
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p4

    .line 4760
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p4

    if-eqz p4, :cond_5b

    .line 4761
    invoke-virtual {p4}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_5b

    iget p4, p4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p4, p2, :cond_5b

    move p1, p3

    :cond_5b
    if-eqz p1, :cond_67

    const/4 p4, 0x0

    move p1, p5

    .line 4768
    const-string/jumbo p5, "resolveContentProvider"

    const/4 p3, 0x0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    goto :goto_68

    :cond_67
    move p1, p5

    :goto_68
    if-nez v0, :cond_6b

    return-object v6

    .line 4776
    :cond_6b
    iget-object p3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    .line 4778
    invoke-static {p3, v0, v3, v4, p2}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result p4

    if-nez p4, :cond_78

    return-object v6

    :cond_78
    move p5, p2

    move p2, p1

    move-object p1, p3

    .line 4781
    new-instance p3, Landroid/content/ComponentName;

    iget-object p4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {p3, p4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x4

    .line 4783
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-eqz p0, :cond_8c

    return-object v6

    :cond_8c
    return-object v0
.end method

.method public resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 15

    .line 4702
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RESOLVE_COMPONENT_FOR_UID"

    const-string/jumbo v2, "resolveContentProviderForUid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 4706
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x0

    .line 4707
    const-string/jumbo v8, "resolveContentProviderForUid"

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4711
    invoke-virtual {p0, p5, v4}, Lcom/android/server/pm/ComputerEngine;->filterAppAccess(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    return-object v1

    .line 4715
    :cond_23
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_2a

    return-object v1

    :cond_2a
    move p5, v4

    .line 4720
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 4721
    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object p2, p0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 4722
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 4723
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    return-object v0

    :cond_46
    return-object v1
.end method

.method public final resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2

    .line 1895
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1896
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1898
    :cond_b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5

    .line 1968
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1969
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 14

    .line 1904
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object p1, v0

    .line 1908
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 1909
    invoke-interface {v0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 1910
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_19

    goto/16 :goto_b0

    .line 1916
    :cond_19
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1917
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_5c

    .line 1918
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 1919
    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1920
    invoke-virtual {p0, p4, p4}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_5d

    .line 1922
    array-length v5, p4

    move v6, v3

    :goto_3c
    if-ge v6, v5, :cond_5d

    aget-object v7, p4, v6

    .line 1923
    iget-object v8, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 1924
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_59

    .line 1926
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibrariesVersions()[J

    move-result-object v7

    aget-wide v7, v7, v8

    .line 1927
    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/util/LongSparseLongArray;->append(JJ)V

    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    :cond_5c
    move-object v1, v2

    :cond_5d
    if-eqz v1, :cond_66

    .line 1934
    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->size()I

    move-result p0

    if-gtz p0, :cond_66

    goto :goto_b0

    .line 1940
    :cond_66
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result p0

    :goto_6a
    if-ge v3, p0, :cond_a9

    .line 1942
    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/SharedLibraryInfo;

    if-eqz v1, :cond_7f

    .line 1944
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    .line 1943
    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_7f

    goto :goto_a6

    .line 1947
    :cond_7f
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_96

    cmp-long v4, v4, p2

    if-nez v4, :cond_a6

    .line 1950
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_96
    if-nez v2, :cond_99

    goto :goto_a5

    .line 1955
    :cond_99
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_a6

    :goto_a5
    move-object v2, p4

    :cond_a6
    :goto_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_a9
    if-eqz v2, :cond_b0

    .line 1961
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b0
    :goto_b0
    return-object p1
.end method

.method public final safeMode()Z
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z
    .registers 14

    .line 2635
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p1

    .line 2636
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_24

    if-eqz v1, :cond_24

    .line 2637
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p2

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    and-int/2addr v1, p0

    add-int/lit8 v0, v0, -0x1

    move-object p0, v3

    goto :goto_a

    :cond_24
    return v1
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 11

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 2623
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2613
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z
    .registers 15

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2601
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .registers 16

    .line 2521
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2522
    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v0

    if-eqz p1, :cond_18

    .line 2524
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {p5, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne v0, v2, :cond_18

    return v1

    .line 2529
    :cond_18
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2530
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    :cond_22
    move v4, p2

    .line 2532
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2c

    move p2, v0

    goto :goto_2d

    :cond_2c
    move p2, v1

    :goto_2d
    if-eqz p1, :cond_3b

    .line 2535
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 2534
    invoke-static {v2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move v2, v0

    goto :goto_3c

    :cond_3b
    move v2, v1

    :goto_3c
    if-eqz p1, :cond_d3

    if-eqz p6, :cond_5c

    .line 2541
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 2542
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isHiddenUntilInstalled()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 2543
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_5c

    if-eqz v2, :cond_d3

    if-eqz p7, :cond_5c

    goto/16 :goto_d3

    .line 2553
    :cond_5c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6, v4}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_67

    return v1

    :cond_67
    if-eqz p2, :cond_9b

    .line 2558
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_74

    return v0

    :cond_74
    if-eqz p3, :cond_91

    .line 2564
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 2565
    invoke-virtual {p1, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    if-eqz p1, :cond_8b

    .line 2567
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_8b

    return v1

    .line 2570
    :cond_8b
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 2573
    :cond_91
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isVisibleToInstantApps()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 2575
    :cond_9b
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_bf

    .line 2577
    invoke-virtual {p0, v4, p5}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result p2

    if-eqz p2, :cond_ac

    return v1

    :cond_ac
    if-eqz p3, :cond_af

    return v0

    .line 2586
    :cond_af
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2587
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 2586
    invoke-virtual {p0, p5, p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 2589
    :cond_bf
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    .line 2590
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p3, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 2591
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object v3, p0

    move-object v6, p1

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result p0

    return p0

    :cond_d3
    :goto_d3
    if-nez p2, :cond_df

    if-nez p6, :cond_df

    .line 2550
    invoke-static {v4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result p0

    if-eqz p0, :cond_de

    goto :goto_df

    :cond_de
    return v1

    :cond_df
    :goto_df
    return v0
.end method

.method public final shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z
    .registers 7

    .line 2670
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    .line 2673
    :cond_8
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_10

    return p2

    .line 2677
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    move p1, p2

    .line 2678
    :goto_15
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p1, v1, :cond_36

    .line 2679
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2680
    invoke-interface {v1, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isHiddenUntilInstalled()Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    :cond_35
    :goto_35
    return p2

    :cond_36
    return v0
.end method

.method public final shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 11

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 2649
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 2659
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z

    move-result p0

    return p0
.end method

.method public final updateFlags(JI)J
    .registers 10

    const-wide/32 v0, 0xc0000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    return-wide p1

    .line 2740
    :cond_c
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    .line 2742
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    or-long p0, p1, v0

    return-wide p0

    :cond_1b
    const-wide/32 v0, 0x80000

    or-long p0, p1, v0

    return-wide p0
.end method

.method public final updateFlagsForApplication(JI)J
    .registers 4

    .line 2755
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForComponent(JI)J
    .registers 4

    .line 2762
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForPackage(JI)J
    .registers 12

    .line 2769
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 2774
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    const-string v7, "MATCH_ANY_USER flag requires INTERACT_ACROSS_USERS permission"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p3

    .line 2774
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    goto :goto_27

    :cond_25
    move-object v1, p0

    move v3, p3

    .line 2778
    :goto_27
    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForResolve(JIIZZ)J
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .line 2796
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForResolve(JIIZZZ)J
    .registers 10

    .line 2805
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->safeMode()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p7, :cond_c

    :cond_8
    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    .line 2808
    :cond_c
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p7

    if-eqz p7, :cond_1d

    if-eqz p6, :cond_18

    const-wide/32 p4, 0x2000000

    or-long/2addr p1, p4

    :cond_18
    const-wide/32 p4, 0x1800000

    or-long/2addr p1, p4

    goto :goto_43

    :cond_1d
    const-wide/32 p6, 0x800000

    and-long/2addr p6, p1

    const-wide/16 v0, 0x0

    cmp-long p6, p6, v0

    const/4 p7, 0x0

    const/4 v0, 0x1

    if-eqz p6, :cond_2b

    move p6, v0

    goto :goto_2c

    :cond_2b
    move p6, p7

    :goto_2c
    if-nez p5, :cond_36

    if-eqz p6, :cond_37

    .line 2818
    invoke-virtual {p0, p4, p3}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result p4

    if-eqz p4, :cond_37

    :cond_36
    move p7, v0

    :cond_37
    const-wide/32 p4, -0x3000001

    and-long/2addr p4, p1

    if-nez p7, :cond_42

    const-wide/32 p4, -0x3800001

    and-long/2addr p1, p4

    goto :goto_43

    :cond_42
    move-wide p1, p4

    .line 2825
    :goto_43
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final use()Lcom/android/server/pm/Computer;
    .registers 2

    .line 487
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return-object p0
.end method
