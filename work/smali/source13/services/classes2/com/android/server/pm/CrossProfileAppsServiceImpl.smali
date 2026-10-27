.class public Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.super Landroid/content/pm/ICrossProfileApps$Stub;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;,
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;,
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossProfileAppsService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

.field private final mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;


# direct methods
.method public static synthetic $r8$lambda$f6EIXq4lzsE-Mxx1kXqOBZtHXGM(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->resetInteractAcrossProfilesAppOp(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTargetUserProfilesUnchecked(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasInteractAcrossProfilesPermission(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetInteractAcrossProfilesAppOpUnchecked(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpUnchecked(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V

    .line 85
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 88
    invoke-direct {p0}, Landroid/content/pm/ICrossProfileApps$Stub;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    .line 89
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 91
    return-void
.end method

.method private appDeclaresCrossProfileAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCrossProfile()Z

    move-result v0

    return v0
.end method

.method private canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 601
    return v1

    .line 603
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasOtherProfileWithPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 604
    return v1

    .line 606
    :cond_f
    const/16 v0, 0x5d

    .line 607
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 608
    return v1

    .line 610
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isCrossProfilePackageAllowlisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canRequestInteractAcrossProfilesUnchecked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 269
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 270
    .local v0, "enabledProfileIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_16

    .line 271
    return v2

    .line 273
    :cond_16
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 274
    return v2

    .line 276
    :cond_1d
    const/16 v1, 0x5d

    .line 277
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 621
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 622
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 623
    .local v0, "profileIds":[I
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_10

    .line 624
    return v1

    .line 626
    :cond_10
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 627
    return v1

    .line 629
    :cond_17
    const/16 v2, 0x5d

    .line 630
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 631
    return v1

    .line 633
    :cond_24
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPlatformSignedAppWithNonUserConfigurablePermission(Ljava/lang/String;[I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private currentModeEquals(ILjava/lang/String;I)Z
    .registers 13
    .param p1, "otherMode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 564
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "op":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v8, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private findAllPackageNames()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 704
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v2

    .line 703
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v0

    .line 705
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda7;-><init>()V

    .line 706
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 707
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 702
    return-object v0
.end method

.method private findBroadcastReceiversForUser(Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 587
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 586
    return-object v0
.end method

.method private getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private hasCallerGotInteractAcrossProfilesPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 308
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    move-result v1

    .line 307
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 741
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 742
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1f

    .line 745
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 746
    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0, v2, p3, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 745
    :goto_1e
    return v1

    .line 743
    :cond_1f
    :goto_1f
    return v1
.end method

.method private hasOtherProfileWithPackageInstalled(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 283
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v1

    .line 285
    .end local v0    # "packages":[Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 286
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "CrossProfileAppsService"

    const-string v2, "PackageManager dead. Cannot get permission info"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, 0x0

    return v1
.end method

.method private haveProfilesGotInteractAcrossProfilesPermission(Ljava/lang/String;Ljava/util/List;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)Z"
        }
    .end annotation

    .line 313
    .local p2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 314
    .local v1, "profile":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 322
    .local v2, "uid":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_26

    .line 323
    return v3

    .line 325
    :cond_26
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 327
    return v3

    .line 329
    .end local v1    # "profile":Landroid/os/UserHandle;
    .end local v2    # "uid":I
    :cond_2d
    goto :goto_4

    .line 330
    :cond_2e
    const/4 v0, 0x1

    return v0
.end method

.method private isCallingUserAManagedProfile()Z
    .registers 2

    .line 732
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method private isCrossProfilePackageAllowlisted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isCrossProfilePackageAllowlistedByDefault(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isManagedProfile(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 736
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isPackageEnabled(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    .line 367
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 481
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isPermissionGranted(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 727
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    return v2
.end method

.method private isPlatformSignedAppWithAutomaticProfilesPermission(Ljava/lang/String;[I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileIds"    # [I

    .line 650
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_24

    aget v3, p2, v2

    .line 651
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, p1, v5, v6, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 653
    .local v4, "uid":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 654
    goto :goto_21

    .line 656
    :cond_17
    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 657
    const/4 v0, 0x1

    return v0

    .line 650
    .end local v3    # "userId":I
    .end local v4    # "uid":I
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 660
    :cond_24
    return v1
.end method

.method private isPlatformSignedAppWithNonUserConfigurablePermission(Ljava/lang/String;[I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileIds"    # [I

    .line 638
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isCrossProfilePackageAllowlistedByDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 639
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPlatformSignedAppWithAutomaticProfilesPermission(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 638
    :goto_f
    return v0
.end method

.method private isProfileOwner(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 760
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V

    .line 761
    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 763
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-nez v0, :cond_11

    .line 764
    const/4 v1, 0x0

    return v1

    .line 766
    :cond_11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isProfileOwner(Ljava/lang/String;[I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 751
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget v3, p2, v2

    .line 752
    .local v3, "userId":I
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 753
    const/4 v0, 0x1

    return v0

    .line 751
    .end local v3    # "userId":I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 756
    :cond_12
    return v1
.end method

.method private isSameProfileGroup(II)Z
    .registers 5
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 715
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findAllPackageNames$12(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 706
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private logStartActivityByIntent(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 253
    nop

    .line 254
    const/16 v0, 0x96

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 255
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 256
    invoke-direct {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isCallingUserAManagedProfile()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 258
    return-void
.end method

.method private maybeKillUid(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "hadPermission"    # Z

    .line 536
    if-nez p3, :cond_3

    .line 537
    return-void

    .line 539
    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 540
    return-void

    .line 542
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->killUid(I)V

    .line 543
    return-void
.end method

.method private maybeLogSetInteractAcrossProfilesAppOp(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "logMetrics"    # Z

    .line 547
    if-nez p3, :cond_3

    .line 548
    return-void

    .line 550
    :cond_3
    const/16 v0, 0x8b

    .line 551
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 552
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 553
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 554
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->appDeclaresCrossProfileAttribute(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 556
    return-void
.end method

.method private resetInteractAcrossProfilesAppOp(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not resetting app-op for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " since it is still configurable by users."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrossProfileAppsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void

    .line 687
    :cond_25
    nop

    .line 688
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "op":Ljava/lang/String;
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    .line 690
    return-void
.end method

.method private sendCanInteractAcrossProfilesChangedBroadcast(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CAN_INTERACT_ACROSS_PROFILES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 573
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->appDeclaresCrossProfileAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 574
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1c

    .line 577
    :cond_17
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 579
    :goto_1c
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->findBroadcastReceiversForUser(Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 580
    .local v2, "receiver":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 581
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 582
    .end local v2    # "receiver":Landroid/content/pm/ResolveInfo;
    goto :goto_24

    .line 583
    :cond_41
    return-void
.end method

.method private setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "userId"    # I

    .line 437
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    .line 438
    .local v0, "callingUid":I
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 439
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1f

    .line 440
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL is required to set the app-op for interacting across profiles."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_1f
    :goto_1f
    const-string v1, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_38

    .line 445
    const-string v1, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_38

    .line 446
    :cond_30
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "MANAGE_APP_OPS_MODES or CONFIGURE_INTERACT_ACROSS_PROFILES is required to set the app-op for interacting across profiles."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_38
    :goto_38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpUnchecked(Ljava/lang/String;II)V

    .line 451
    return-void
.end method

.method private setInteractAcrossProfilesAppOpForProfile(Ljava/lang/String;IIZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "profileId"    # I
    .param p4, "logMetrics"    # Z

    .line 493
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpForProfileOrThrow(Ljava/lang/String;IIZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 497
    goto :goto_27

    .line 495
    :catch_4
    move-exception v0

    .line 496
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on profile user ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrossProfileAppsService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_27
    return-void
.end method

.method private setInteractAcrossProfilesAppOpForProfileOrThrow(Ljava/lang/String;IIZ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "profileId"    # I
    .param p4, "logMetrics"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 504
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    .line 505
    .local v0, "uid":I
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->currentModeEquals(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set mode to existing value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on profile user ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrossProfileAppsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void

    .line 511
    :cond_3e
    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v1

    .line 514
    .local v1, "hadPermission":Z
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    invoke-direct {p0, v3, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 517
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_67

    .line 521
    :cond_5c
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x5d

    .line 522
    invoke-virtual {v2, v3, v0, p2}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 526
    :goto_67
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->maybeKillUid(Ljava/lang/String;IZ)V

    .line 527
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->sendCanInteractAcrossProfilesChangedBroadcast(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 528
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->maybeLogSetInteractAcrossProfilesAppOp(Ljava/lang/String;IZ)V

    .line 529
    return-void
.end method

.method private setInteractAcrossProfilesAppOpUnchecked(Ljava/lang/String;II)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "userId"    # I

    .line 455
    if-nez p2, :cond_21

    .line 456
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to turn on the appop for interacting across profiles for invalid app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrossProfileAppsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 463
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 464
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 465
    .local v0, "profileIds":[I
    array-length v2, v0

    move v3, v1

    :goto_2e
    if-ge v3, v2, :cond_44

    aget v4, v0, v3

    .line 466
    .local v4, "profileId":I
    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_39

    .line 467
    goto :goto_41

    .line 470
    :cond_39
    if-ne v4, p3, :cond_3d

    const/4 v5, 0x1

    goto :goto_3e

    :cond_3d
    move v5, v1

    :goto_3e
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpForProfile(Ljava/lang/String;IIZ)V

    .line 465
    .end local v4    # "profileId":I
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 473
    :cond_44
    return-void
.end method

.method private verifyActivityCanHandleIntent(Landroid/content/Intent;II)V
    .registers 6
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 380
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;II)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 394
    return-void
.end method

.method private verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V
    .registers 13
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v7, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;IILandroid/content/ComponentName;)V

    invoke-interface {v0, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 422
    return-void
.end method

.method private verifyCallingPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 724
    return-void
.end method


# virtual methods
.method public canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public canInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 293
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 297
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 296
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 298
    .local v0, "targetUserProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 299
    return v2

    .line 301
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasCallerGotInteractAcrossProfilesPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 302
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->haveProfilesGotInteractAcrossProfilesPermission(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 301
    :goto_27
    return v2
.end method

.method public canRequestInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 262
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canRequestInteractAcrossProfilesUnchecked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 616
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 615
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearInteractAcrossProfilesAppOps()V
    .registers 4

    .line 694
    nop

    .line 696
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v0

    .line 697
    .local v0, "defaultMode":I
    invoke-direct {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->findAllPackageNames()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V

    .line 698
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 699
    return-void
.end method

.method getLocalService()Landroid/content/pm/CrossProfileAppsInternal;
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    return-object v0
.end method

.method public getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 99
    nop

    .line 100
    const/16 v0, 0x7d

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 104
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 105
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$clearInteractAcrossProfilesAppOps$11$com-android-server-pm-CrossProfileAppsServiceImpl(ILjava/lang/String;)V
    .registers 3
    .param p1, "defaultMode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 698
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$currentModeEquals$9$com-android-server-pm-CrossProfileAppsServiceImpl(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "otherMode"    # I
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 566
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 565
    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getTargetUserProfilesUnchecked$3$com-android-server-pm-CrossProfileAppsServiceImpl(ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 349
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 351
    .local v0, "enabledProfileIds":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v1, "targetProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_29

    aget v4, v0, v3

    .line 353
    .local v4, "profileId":I
    if-ne v4, p1, :cond_18

    .line 354
    goto :goto_26

    .line 356
    :cond_18
    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 357
    goto :goto_26

    .line 359
    :cond_1f
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v4    # "profileId":I
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 361
    :cond_29
    return-object v1
.end method

.method synthetic lambda$hasOtherProfileWithPackageInstalled$10$com-android-server-pm-CrossProfileAppsServiceImpl(ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 666
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 667
    .local v0, "profileIds":[I
    array-length v2, v0

    move v3, v1

    :goto_d
    if-ge v3, v2, :cond_22

    aget v4, v0, v3

    .line 668
    .local v4, "profileId":I
    if-eq v4, p1, :cond_1f

    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 669
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 667
    .end local v4    # "profileId":I
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 672
    :cond_22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$haveProfilesGotInteractAcrossProfilesPermission$0$com-android-server-pm-CrossProfileAppsServiceImpl(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Integer;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 317
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 316
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    .line 318
    :catch_14
    move-exception v0

    .line 319
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$isCrossProfilePackageAllowlisted$1$com-android-server-pm-CrossProfileAppsServiceImpl(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 335
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$isCrossProfilePackageAllowlistedByDefault$2$com-android-server-pm-CrossProfileAppsServiceImpl(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$isManagedProfile$14$com-android-server-pm-CrossProfileAppsServiceImpl(I)Ljava/lang/Boolean;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$isPackageEnabled$4$com-android-server-pm-CrossProfileAppsServiceImpl(Ljava/lang/String;II)Ljava/lang/Boolean;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 369
    const-wide/32 v3, 0xc0000

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 374
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1a

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$isPackageInstalled$7$com-android-server-pm-CrossProfileAppsServiceImpl(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 482
    const/high16 v0, 0xc0000

    .line 483
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 484
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 485
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v6

    const-wide/32 v4, 0xc0000

    move-object v3, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 486
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method synthetic lambda$isProfileOwner$15$com-android-server-pm-CrossProfileAppsServiceImpl(I)Landroid/content/ComponentName;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$isSameProfileGroup$13$com-android-server-pm-CrossProfileAppsServiceImpl(II)Ljava/lang/Boolean;
    .registers 4
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$setInteractAcrossProfilesAppOpForProfileOrThrow$8$com-android-server-pm-CrossProfileAppsServiceImpl(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "newMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    .line 519
    const/16 v1, 0x5d

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 518
    return-void
.end method

.method synthetic lambda$verifyActivityCanHandleIntent$5$com-android-server-pm-CrossProfileAppsServiceImpl(Landroid/content/Intent;II)V
    .registers 12
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 382
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 384
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 382
    const-wide/32 v4, 0xc0000

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    .line 389
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 390
    return-void

    .line 392
    :cond_21
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Activity cannot handle intent"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic lambda$verifyActivityCanHandleIntentAndExported$6$com-android-server-pm-CrossProfileAppsServiceImpl(Landroid/content/Intent;IILandroid/content/ComponentName;)V
    .registers 13
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 404
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 406
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 404
    const-wide/32 v4, 0xc0000

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    .line 410
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 411
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v1, :cond_49

    .line 412
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 413
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 414
    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v4, :cond_46

    .line 416
    return-void

    .line 411
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 419
    .end local v2    # "i":I
    :cond_49
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER or activity is not exported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetInteractAcrossProfilesAppOps(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 678
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 679
    return-void
.end method

.method public setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I

    .line 432
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V

    .line 433
    return-void
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 28
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .param p6, "launchMainActivity"    # Z
    .param p7, "targetTask"    # Landroid/os/IBinder;
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v1, p8

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-direct {v0, v10}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 123
    nop

    .line 124
    const/16 v2, 0x7e

    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    .line 125
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 128
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v13

    .line 129
    .local v13, "callerUserId":I
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v14

    .line 130
    .local v14, "callingUid":I
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    move-result v15

    .line 132
    .local v15, "callingPid":I
    invoke-direct {v0, v10, v13}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 134
    .local v9, "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 139
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 146
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v8, v2

    .line 147
    .local v8, "launchIntent":Landroid/content/Intent;
    if-eqz p6, :cond_78

    .line 148
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    if-nez p7, :cond_6b

    .line 151
    const/high16 v2, 0x10200000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_70

    .line 154
    :cond_6b
    const/high16 v2, 0x200000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    :goto_70
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a3

    .line 163
    :cond_78
    if-eq v13, v12, :cond_a0

    .line 164
    invoke-direct {v0, v10, v14, v15}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_91

    .line 165
    const-string v2, "android.permission.START_CROSS_PROFILE_ACTIVITIES"

    invoke-direct {v0, v2, v14}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_89

    goto :goto_91

    .line 166
    :cond_89
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Attempt to launch activity without one of the required android.permission.INTERACT_ACROSS_PROFILES or android.permission.START_CROSS_PROFILE_ACTIVITIES permissions."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_91
    :goto_91
    invoke-direct {v0, v13, v12}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isSameProfileGroup(II)Z

    move-result v2

    if-eqz v2, :cond_98

    goto :goto_a0

    .line 171
    :cond_98
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Attempt to launch activity when target user is not in the same profile group."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_a0
    :goto_a0
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    :goto_a3
    invoke-direct {v0, v8, v11, v14, v12}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V

    .line 180
    if-nez v1, :cond_b3

    .line 181
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v16, v1

    .end local p8    # "options":Landroid/os/Bundle;
    .local v1, "options":Landroid/os/Bundle;
    goto :goto_c0

    .line 183
    .end local v1    # "options":Landroid/os/Bundle;
    .restart local p8    # "options":Landroid/os/Bundle;
    :cond_b3
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object/from16 v16, v1

    .line 186
    .end local p8    # "options":Landroid/os/Bundle;
    .local v16, "options":Landroid/os/Bundle;
    :goto_c0
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 188
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v8

    move-object/from16 v6, p7

    move-object/from16 v17, v8

    .end local v8    # "launchIntent":Landroid/content/Intent;
    .local v17, "launchIntent":Landroid/content/Intent;
    move-object/from16 v8, v16

    move-object/from16 v18, v9

    .end local v9    # "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .local v18, "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 194
    return-void

    .line 140
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "launchIntent":Landroid/content/Intent;
    .end local v18    # "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v9    # "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local p8    # "options":Landroid/os/Bundle;
    :cond_e3
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attempts to start an activity in other package - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_104
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot access unrelated user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 25
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I
    .param p6, "callingActivity"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move/from16 v11, p5

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "The intent must have a Component set"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    invoke-direct {v0, v10}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 211
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v12

    .line 212
    .local v12, "callerUserId":I
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v13

    .line 214
    .local v13, "callingUid":I
    invoke-direct {v0, v10, v12}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 216
    .local v14, "allowedTargetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-eq v12, v11, :cond_52

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_52

    .line 217
    :cond_35
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot access unrelated user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_52
    :goto_52
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v15, p4

    invoke-direct {v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v1

    .line 221
    .local v9, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 229
    if-eq v12, v11, :cond_7c

    .line 230
    invoke-direct {v0, v10}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasCallerGotInteractAcrossProfilesPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    goto :goto_7c

    .line 231
    :cond_74
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_7c
    :goto_7c
    invoke-direct {v0, v9, v13, v11}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntent(Landroid/content/Intent;II)V

    .line 239
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    const/4 v7, 0x0

    .line 240
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v9

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v16, v9

    .end local v9    # "launchIntent":Landroid/content/Intent;
    .local v16, "launchIntent":Landroid/content/Intent;
    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 249
    invoke-direct {v0, v10}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->logStartActivityByIntent(Ljava/lang/String;)V

    .line 250
    return-void

    .line 224
    .end local v16    # "launchIntent":Landroid/content/Intent;
    .restart local v9    # "launchIntent":Landroid/content/Intent;
    :cond_9c
    move-object/from16 v16, v9

    .end local v9    # "launchIntent":Landroid/content/Intent;
    .restart local v16    # "launchIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempts to start an activity in other package - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
