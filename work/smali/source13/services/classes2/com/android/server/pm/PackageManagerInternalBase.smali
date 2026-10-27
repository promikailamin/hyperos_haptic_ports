.class abstract Lcom/android/server/pm/PackageManagerInternalBase;
.super Landroid/content/pm/PackageManagerInternal;
.source "PackageManagerInternalBase.java"


# instance fields
.field private final mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .line 76
    invoke-direct {p0}, Landroid/content/pm/PackageManagerInternal;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 78
    return-void
.end method

.method static synthetic lambda$removeNonSystemPackageSuspensions$0(Ljava/lang/String;)Z
    .registers 2
    .param p0, "suspendingPackage"    # Ljava/lang/String;

    .line 244
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public final canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/Computer;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public final canAccessInstantApps(II)Z
    .registers 4
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v0

    return v0
.end method

.method public final canQueryPackage(ILjava/lang/String;)Z
    .registers 4
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 4
    .param p1, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 743
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/mutate/PackageStateMutator;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v0

    return-object v0
.end method

.method public final deleteOatArtifactsOfPackage(Ljava/lang/String;)J
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final filterAppAccess(II)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "callingUid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->filterAppAccess(II)Z

    move-result v0

    return v0
.end method

.method public final filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/Computer;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    return v0
.end method

.method public final filterAppAccess(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/Computer;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final finishPackageInstall(IZ)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "didLaunch"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->finishPackageInstall(IZ)V

    .line 636
    return-void
.end method

.method public final forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 584
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->forEachInstalledPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;I)V

    .line 585
    return-void
.end method

.method public final forEachPackage(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 578
    return-void
.end method

.method public final forEachPackageSetting(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 565
    .local p1, "actionLocked":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    .line 566
    return-void
.end method

.method public final forEachPackageState(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 572
    return-void
.end method

.method public final freeAllAppCacheAboveQuota(Ljava/lang/String;)V
    .registers 3
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->freeAllAppCacheAboveQuota(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public final freeStorage(Ljava/lang/String;JI)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V

    .line 554
    return-void
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getAndroidPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackageApi;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getApexManager()Lcom/android/server/pm/ApexManager;
.end method

.method public final getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "apexPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 647
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAppDataHelper()Lcom/android/server/pm/AppDataHelper;
.end method

.method public final getApplicationEnabledState(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 612
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_8

    .line 613
    const/4 v1, 0x0

    return v1

    .line 615
    :cond_8
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledState()I

    move-result v1

    return v1
.end method

.method public final getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getAppsWithSharedUserIds()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentEnabledSetting(Landroid/content/ComponentName;II)I
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result v0

    return v0
.end method

.method protected abstract getContext()Landroid/content/Context;
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDexManager()Lcom/android/server/pm/dex/DexManager;
.end method

.method public final getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 601
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_c

    .line 602
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    return-object v1

    .line 604
    :cond_c
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v1

    return-object v1
.end method

.method public final getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDistractingPackageHelper()Lcom/android/server/pm/DistractingPackageHelper;
.end method

.method public final getDistractingPackageRestrictions(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 281
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    .line 282
    :cond_8
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDistractionFlags()I

    move-result v1

    .line 281
    :goto_10
    return v1
.end method

.method public final getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 755
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DexManager;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    return-object v0
.end method

.method public final getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 591
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_c

    .line 592
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    return-object v1

    .line 594
    :cond_c
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v1

    return-object v1
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final getInstalledApplications(JII)Ljava/util/List;
    .registers 6
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getInstantAppPackageName(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;
.end method

.method public final getKnownPackageNames(II)[Ljava/lang/String;
    .registers 5
    .param p1, "knownPackage"    # I
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getMimeGroupInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 3
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPackageObserverHelper()Lcom/android/server/pm/PackageObserverHelper;
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageStates()Landroid/util/ArrayMap;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageTargetSdkVersion(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 493
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 494
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    return v1

    .line 496
    :cond_15
    const/16 v1, 0x2710

    return v1
.end method

.method public final getPackageUid(Ljava/lang/String;JI)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/16 v5, 0x3e8

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result v0

    return v0
.end method

.method public final getPackagesForAppId(I)Ljava/util/List;
    .registers 3
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackagesForAppId(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPermissionGids(Ljava/lang/String;I)[I
    .registers 4
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.end method

.method public final getProcessesForUid(I)Landroid/util/ArrayMap;
    .registers 3
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;
.end method

.method protected abstract getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;
.end method

.method public final getSetupWizardPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 3
    .param p1, "sharedUserAppId"    # I

    .line 722
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

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

    .line 716
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 528
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;
.end method

.method public final getSuspendedDialogInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;
    .registers 10
    .param p1, "suspendedPackage"    # Ljava/lang/String;
    .param p2, "suspendingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 273
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedDialogInfo(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 228
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageLauncherExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "suspendedPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 265
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemUiServiceComponent()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final getUidTargetSdkVersion(I)I
    .registers 3
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result v0

    return v0
.end method

.method protected abstract getUserNeedsBadging()Lcom/android/server/pm/UserNeedsBadgingCache;
.end method

.method public final getVisibilityAllowList(Ljava/lang/String;I)[I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->getVisibilityAllowList(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public final grantImplicitAccess(ILandroid/content/Intent;IIZ)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "recipientAppId"    # I
    .param p4, "visibleUid"    # I
    .param p5, "direct"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerInternalBase;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 427
    return-void
.end method

.method public final grantImplicitAccess(ILandroid/content/Intent;IIZZ)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "recipientAppId"    # I
    .param p4, "visibleUid"    # I
    .param p5, "direct"    # Z
    .param p6, "retainOnUpdate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    .line 435
    return-void
.end method

.method public final hasInstantApplicationMetadata(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 515
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantApplicationMetadata(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isApexPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 641
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v0

    return v0
.end method

.method public final isEnabledAndMatches(Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z
    .registers 6
    .param p1, "component"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    nop

    .line 395
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 394
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    return v0
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 441
    .local v0, "instantAppInstallerActivity":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_12

    .line 442
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 441
    :goto_13
    return v1
.end method

.method public final isOnlyCoreApps()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v0

    return v0
.end method

.method public final isPackageDataProtected(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isPackageEphemeral(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 377
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_12

    .line 378
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 377
    :goto_13
    return v1
.end method

.method public final isPackageFrozen(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 696
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/server/pm/Computer;->getPackageStartability(ZLjava/lang/String;II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public final isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isPackageSuspended(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 235
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/server/pm/SuspendPackageHelper;->isPackageSuspended(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isSuspendingAnyPackages(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isSuspendingAnyPackages(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isSystemPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUidPrivileged(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 727
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->isUidPrivileged(I)Z

    move-result v0

    return v0
.end method

.method public final pruneInstantApps()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;)V

    .line 449
    return-void
.end method

.method public final queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 14
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;
    .registers 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I
    .param p7, "forSend"    # Z
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p6

    move v7, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentServices(Landroid/content/Intent;JII)Ljava/util/List;
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # J
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "resolvedType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p2

    move v6, p5

    move v7, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final reconcileAppsData(IIZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "flags"    # I
    .param p3, "migrateAppsData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 710
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getAppDataHelper()Lcom/android/server/pm/AppDataHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsData(IIZ)V

    .line 711
    return-void
.end method

.method public final recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object v0

    return-object v0
.end method

.method public final removeAllDistractingPackageRestrictions(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    .line 260
    return-void
.end method

.method public final removeDistractingPackageRestrictions(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getDistractingPackageHelper()Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    .line 254
    return-void
.end method

.method public final removeNonSystemPackageSuspensions(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 247
    return-void
.end method

.method public final removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/content/pm/PackageManagerInternal$PackageListObserver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageObserverHelper()Lcom/android/server/pm/PackageObserverHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageObserverHelper;->removeObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    .line 191
    return-void
.end method

.method public final requestChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeSplits"    # Z
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "trustedInstallers"    # Ljava/util/List;
    .param p6, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .param p7, "userId"    # I
    .param p8, "executor"    # Ljava/util/concurrent/Executor;
    .param p9, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PackageManagerService;->requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 690
    return-void
.end method

.method public final requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 19
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "isRequesterInstantApp"    # Z
    .param p7, "verificationBundle"    # Landroid/os/Bundle;
    .param p8, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 416
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PackageManagerService;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 419
    return-void
.end method

.method public final resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public final resolveIntent(Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "privateResolveFlags"    # J
    .param p7, "userId"    # I
    .param p8, "resolveForStart"    # Z
    .param p9, "filterCallingUid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public final resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setEnableRollbackCode(II)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "enableRollbackCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setEnableRollbackCode(II)V

    .line 630
    return-void
.end method

.method public final setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V

    .line 209
    return-void
.end method

.method public final setOwnerProtectedPackages(ILjava/util/List;)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->setOwnerProtectedPackages(ILjava/util/List;)V

    .line 359
    return-void
.end method

.method public final shutdown()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 750
    return-void
.end method

.method public final snapshot()Lcom/android/server/pm/Computer;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .registers 2

    .line 71
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    return-object v0
.end method

.method public final unsuspendForSuspendingPackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "affectedUser"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 672
    return-void
.end method

.method public final userNeedsBadging(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getUserNeedsBadging()Lcom/android/server/pm/UserNeedsBadgingCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v0

    return v0
.end method

.method public final wasPackageEverLaunched(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 385
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_11

    .line 388
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isNotLaunched()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 386
    :cond_11
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
