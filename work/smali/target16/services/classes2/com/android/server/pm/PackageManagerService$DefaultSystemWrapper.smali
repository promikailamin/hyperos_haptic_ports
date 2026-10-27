.class public Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public disablePackageCaches()V
    .registers 1

    .line 740
    invoke-static {}, Landroid/content/pm/PackageManager;->disableApplicationInfoCache()V

    .line 741
    invoke-static {}, Landroid/content/pm/PackageManager;->disablePackageInfoCache()V

    const/16 p0, 0xd

    .line 742
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->invalidateGetPackagesForUidCache(I)V

    .line 744
    invoke-static {}, Landroid/app/ApplicationPackageManager;->disableGetPackagesForUidCache()V

    .line 745
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateHasSystemFeatureCache()V

    .line 746
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 747
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateQueryIntentActivitiesCache()V

    .line 748
    invoke-static {}, Landroid/app/ApplicationPackageManager;->disableQueryIntentActivitiesCacheForCurrentProcess()V

    .line 749
    invoke-static {}, Landroid/app/AppOpsManager;->disableCheckPackageCache()V

    return-void
.end method

.method public enablePackageCaches()V
    .registers 1

    .line 754
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void
.end method
