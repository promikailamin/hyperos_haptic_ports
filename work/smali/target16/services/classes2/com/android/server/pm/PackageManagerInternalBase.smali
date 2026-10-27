.class public abstract Lcom/android/server/pm/PackageManagerInternalBase;
.super Landroid/content/pm/PackageManagerInternal;
.source "PackageManagerInternalBase.java"


# instance fields
.field public final mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$4PlUE9V_1Q6ossbrw0v7dzPBhLE(Landroid/content/pm/UserPackage;)Z
    .registers 2

    .line 257
    const-string v0, "android"

    iget-object p0, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$xFpR2RfLWu2vMabC9jrohqaiocE([Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Z
    .registers 2

    .line 340
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/content/pm/PackageManagerInternal;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 4

    .line 542
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public final canAccessInstantApps(II)Z
    .registers 3

    .line 535
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result p0

    return p0
.end method

.method public final canQueryPackage(ILjava/lang/String;)Z
    .registers 3

    .line 158
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public checkUidSignaturesForAllUsers(II)I
    .registers 3

    .line 774
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->checkUidSignaturesForAllUsers(II)I

    move-result p0

    return p0
.end method

.method public final commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 3

    .line 815
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p0

    return-object p0
.end method

.method public final deleteOatArtifactsOfPackage(Ljava/lang/String;)J
    .registers 3

    .line 745
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final filterAppAccess(II)Z
    .registers 3

    .line 145
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->filterAppAccess(II)Z

    move-result p0

    return p0
.end method

.method public final filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 4

    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z

    move-result p0

    return p0
.end method

.method public final filterAppAccess(Ljava/lang/String;IIZ)Z
    .registers 5

    .line 139
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public final finishPackageInstall(IZ)V
    .registers 3

    .line 662
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->finishPackageInstall(IZ)V

    return-void
.end method

.method public final forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    .registers 4

    .line 611
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->forEachInstalledPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public final forEachPackage(Ljava/util/function/Consumer;)V
    .registers 3

    .line 604
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachPackageState(Ljava/util/function/Consumer;)V
    .registers 3

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final freeAllAppCacheAboveQuota(Ljava/lang/String;)V
    .registers 2

    .line 586
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->freeAllAppCacheAboveQuota(Ljava/lang/String;)V

    return-void
.end method

.method public final freeStorage(Ljava/lang/String;JI)V
    .registers 5

    .line 580
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V

    return-void
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 6

    .line 316
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/Computer;->getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAndroidPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public abstract getApexManager()Lcom/android/server/pm/ApexManager;
.end method

.method public final getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 674
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getAppDataHelper()Lcom/android/server/pm/AppDataHelper;
.end method

.method public final getApplicationEnabledState(Ljava/lang/String;I)I
    .registers 3

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 642
    :cond_8
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    return p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 309
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/Computer;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getComponentEnabledSetting(Landroid/content/ComponentName;II)I
    .registers 4

    .line 649
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result p0

    return p0
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 2

    .line 366
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 3

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_c

    .line 629
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    .line 631
    :cond_c
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDistractingPackageHelper()Lcom/android/server/pm/DistractingPackageHelper;
.end method

.method public final getDistractingPackageRestrictions(Ljava/lang/String;I)I
    .registers 3

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 295
    :cond_8
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result p0

    return p0
.end method

.method public final getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 3

    .line 617
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_c

    .line 619
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    .line 621
    :cond_c
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 3

    .line 360
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getInstalledApplications(JII)Ljava/util/List;
    .registers 11

    .line 105
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getInstalledApplications(JIIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getInstalledApplicationsCrossUser(JII)Ljava/util/List;
    .registers 11

    .line 113
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v5, 0x1

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getInstalledApplications(JIIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getInstantAppPackageName(I)Ljava/lang/String;
    .registers 2

    .line 126
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;
.end method

.method public final getKnownPackageNames(II)[Ljava/lang/String;
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNameForUid(I)Ljava/lang/String;
    .registers 2

    .line 429
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 2

    .line 177
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;
    .registers 14

    .line 234
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPackageObserverHelper()Lcom/android/server/pm/PackageObserverHelper;
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 2

    .line 190
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageStates()Landroid/util/ArrayMap;
    .registers 1

    .line 197
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageTargetSdkVersion(Ljava/lang/String;)I
    .registers 2

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 526
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 527
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_15
    const/16 p0, 0x2710

    return p0
.end method

.method public final getPackageUid(Ljava/lang/String;JI)I
    .registers 11

    .line 302
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/16 v5, 0x3e8

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p0

    return p0
.end method

.method public final getPackagesForAppId(I)Ljava/util/List;
    .registers 2

    .line 183
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackagesForAppId(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissionGids(Ljava/lang/String;I)[I
    .registers 3

    .line 573
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public abstract getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.end method

.method public final getProcessesForUid(I)Landroid/util/ArrayMap;
    .registers 2

    .line 567
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public abstract getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;
.end method

.method public abstract getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;
.end method

.method public final getSetupWizardPackageName()Ljava/lang/String;
    .registers 1

    .line 476
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 3

    .line 561
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;
.end method

.method public final getSuspendedDialogInfo(Ljava/lang/String;Landroid/content/pm/UserPackage;I)Landroid/content/pm/SuspendDialogInfo;
    .registers 10

    .line 286
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 286
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedDialogInfo(Lcom/android/server/pm/Computer;Ljava/lang/String;Landroid/content/pm/UserPackage;II)Landroid/content/pm/SuspendDialogInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    .line 241
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 241
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageLauncherExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getSuspendingPackage(Ljava/lang/String;I)Landroid/content/pm/UserPackage;
    .registers 5

    .line 278
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 278
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/content/pm/UserPackage;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemUiServiceComponent()Landroid/content/ComponentName;
    .registers 2

    .line 372
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104030a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getUidTargetSdkVersion(I)I
    .registers 2

    .line 519
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result p0

    return p0
.end method

.method public final grantImplicitAccess(ILandroid/content/Intent;IIZ)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 447
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerInternalBase;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    return-void
.end method

.method public final grantImplicitAccess(ILandroid/content/Intent;IIZZ)V
    .registers 15

    .line 455
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

    return-void
.end method

.method public final hasInstantApplicationMetadata(Ljava/lang/String;I)Z
    .registers 3

    .line 548
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantApplicationMetadata(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isAdminSuspendingAnyPackages(I)Z
    .registers 3

    .line 709
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-string v0, "android"

    invoke-interface {p0, v0, p1, p1}, Lcom/android/server/pm/Computer;->isSuspendingAnyPackages(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isApexPackage(Ljava/lang/String;)Z
    .registers 2

    .line 668
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z
    .registers 3

    .line 680
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result p0

    return p0
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 3

    .line 120
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
    .registers 2

    .line 462
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_12

    .line 464
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageDataProtected(ILjava/lang/String;)Z
    .registers 3

    .line 386
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageEphemeral(ILjava/lang/String;)Z
    .registers 3

    .line 398
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 400
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageFrozen(Ljava/lang/String;II)Z
    .registers 5

    .line 737
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getPackageStartability(ZLjava/lang/String;II)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 3

    .line 392
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPackageStopped(Ljava/lang/String;I)Z
    .registers 3

    .line 799
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isPackageSuspended(Ljava/lang/String;I)Z
    .registers 5

    .line 248
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 248
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/pm/SuspendPackageHelper;->isPackageSuspended(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .registers 3

    .line 227
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isSystemPackage(Ljava/lang/String;)Z
    .registers 3

    .line 692
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUidPrivileged(I)Z
    .registers 2

    .line 769
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->isUidPrivileged(I)Z

    move-result p0

    return p0
.end method

.method public notifyComponentUsed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 786
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->notifyComponentUsed(Lcom/android/server/pm/Computer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final pruneInstantApps()V
    .registers 2

    .line 470
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;)V

    return-void
.end method

.method public final queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 7

    .line 324
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIIZ[Ljava/lang/String;)Ljava/util/List;
    .registers 21

    move-object/from16 v0, p9

    .line 334
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v1

    .line 335
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v7, p7

    move/from16 v10, p8

    .line 334
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    move-result-object p0

    if-eqz v0, :cond_23

    .line 340
    new-instance p1, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_23
    return-object p0
.end method

.method public final queryIntentServices(Landroid/content/Intent;JII)Ljava/util/List;
    .registers 17

    .line 351
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, -0x1

    move-object v2, p1

    move-wide v4, p2

    move v7, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final reconcileAppsData(IIZ)V
    .registers 4

    .line 752
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getAppDataHelper()Lcom/android/server/pm/AppDataHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsData(IIZ)V

    return-void
.end method

.method public final removeAllDistractingPackageRestrictions(I)V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    return-void
.end method

.method public final removeDistractingPackageRestrictions(Ljava/lang/String;I)V
    .registers 4

    .line 265
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getDistractingPackageHelper()Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    return-void
.end method

.method public final removeNonSystemPackageSuspensions(Ljava/lang/String;I)V
    .registers 5

    .line 255
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public final removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .registers 2

    .line 203
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageObserverHelper()Lcom/android/server/pm/PackageObserverHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageObserverHelper;->removeObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    return-void
.end method

.method public final requestChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    .registers 21

    .line 728
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PackageManagerService;->requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-void
.end method

.method public final requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 9

    .line 438
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/pm/PackageManagerService;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    return-void
.end method

.method public final resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 6

    .line 513
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/Computer;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final resolveIntent(Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;
    .registers 23

    .line 485
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

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;
    .registers 17

    .line 494
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final resolveService(Landroid/content/Intent;Ljava/lang/String;JIII)Landroid/content/pm/ResolveInfo;
    .registers 18

    .line 505
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v9, 0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final setEnableRollbackCode(II)V
    .registers 3

    .line 656
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setEnableRollbackCode(II)V

    return-void
.end method

.method public final setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V

    return-void
.end method

.method public final setOwnerProtectedPackages(ILjava/util/List;)V
    .registers 3

    .line 380
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->setOwnerProtectedPackages(ILjava/util/List;)V

    return-void
.end method

.method public setPackageStoppedState(Ljava/lang/String;ZI)V
    .registers 5

    .line 780
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final shutdown()V
    .registers 1

    .line 821
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    return-void
.end method

.method public final snapshot()Lcom/android/server/pm/Computer;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .registers 1

    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0
.end method

.method public final unsuspendAdminSuspendedPackages(I)V
    .registers 4

    .line 700
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 701
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-string v1, "android"

    .line 700
    invoke-virtual {v0, p0, v1, p1, p1}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)V

    return-void
.end method

.method public unsuspendForSuspendingPackage(Ljava/lang/String;II)V
    .registers 5

    .line 717
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 718
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 717
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)V

    return-void
.end method

.method public final wasPackageEverLaunched(Ljava/lang/String;I)Z
    .registers 4

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 410
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 408
    :cond_11
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
