.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
.super Landroid/app/admin/DevicePolicyManagerInternal;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/app/admin/DevicePolicyManagerLiteInternal;


# instance fields
.field public mWidgetProviderListeners:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$6J8-a-hWamYpKbQVs45CuWqU2k0(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    const/4 v0, 0x0

    .line 16189
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 16191
    const-string p1, "DevicePolicyManager"

    const-string v0, "getPackageInfo error"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8cvT9DMWBdj5JQFi4Zbi7mDKqVM(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->lambda$notifyUnsafeOperationStateChanged$3(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MN70jUnF9zWNG_Gk-8PpW7m7zi0(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->lambda$reportSeparateProfileChallengeChanged$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEKFP5lkZcphrr-za220NYI2hQM(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->lambda$notifyCrossProfileProvidersChanged$0(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .line 16014
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
    .registers 4

    .line 16054
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 16055
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    if-nez v1, :cond_15

    .line 16056
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_24

    .line 16058
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 16059
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16061
    :cond_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_13

    throw p0
.end method

.method public final broadcastIntentToCrossProfileManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .registers 12

    .line 16263
    const-string v1, "DevicePolicyManager"

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 16265
    :try_start_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_69

    const/4 v4, 0x0

    const-wide/16 v5, 0x400

    move-object v3, p1

    :try_start_e
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 16267
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 16268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 16269
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 16270
    invoke-virtual {p0, v2, v7, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->checkCrossProfilePackagePermissions(Ljava/lang/String;IZ)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 16272
    invoke-virtual {p0, v2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->checkModifyQuietModePermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_3c

    :catch_39
    move-exception v0

    :goto_3a
    move-object p0, v0

    goto :goto_6c

    .line 16273
    :cond_3c
    :goto_3c
    const-string v4, "Sending %s broadcast to %s."

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16275
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16276
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x1000000

    .line 16277
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 16278
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_67} :catch_39

    goto :goto_1a

    :cond_68
    return-void

    :catch_69
    move-exception v0

    move-object v3, p1

    goto :goto_3a

    .line 16283
    :goto_6c
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 16282
    const-string p1, "Cannot get list of broadcast receivers for %s because: %s."

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .registers 7

    .line 16239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16240
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16241
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DevicePolicyManager"

    const-string v2, "Sending %s broadcast to manifest receivers."

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16242
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->broadcastIntentToCrossProfileManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 16244
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string p3, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    invoke-static {p0, p1, p3, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mbroadcastExplicitIntentToRoleHolder(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public canSilentlyInstallPackage(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 16148
    :cond_4
    new-instance p1, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p1, v1, p2, v2, v2}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(IILjava/lang/String;Landroid/content/ComponentName;)V

    .line 16149
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isUserAffiliatedWithDevice(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 16150
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isActiveProfileOwner(I)Z

    move-result p2

    if-nez p2, :cond_2b

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 16151
    invoke-static {p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misDefaultDeviceOwner(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p2

    if-nez p2, :cond_2b

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misFinancedDeviceOwner(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_2b
    const/4 p0, 0x1

    return p0

    :cond_2d
    return v0
.end method

.method public final checkCrossProfilePackagePermissions(Ljava/lang/String;IZ)Z
    .registers 6

    .line 16313
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 16315
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 16316
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCrossProfile()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_39

    :cond_16
    if-nez p3, :cond_1a

    const/4 p0, 0x1

    return p0

    .line 16322
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_21

    return v1

    .line 16326
    :cond_21
    :try_start_21
    const-class p0, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 16328
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/CrossProfileAppsInternal;->verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result p0
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2d} :catch_2e

    return p0

    .line 16331
    :catch_2e
    const-string p0, "Cannot find the package %s to check for permissions."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "DevicePolicyManager"

    invoke-static {p2, p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    :goto_39
    return v1
.end method

.method public final checkModifyQuietModePermission(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    .line 16293
    :try_start_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 16294
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 16295
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16294
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 16293
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 16296
    const-string p2, "android.permission.MODIFY_QUIET_MODE"

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 16297
    invoke-static {p2, p0, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_20} :catch_24

    if-nez p0, :cond_23

    return v2

    :cond_23
    return v0

    .line 16301
    :catch_24
    const-string p0, "Cannot find the package %s to check for permissions."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "DevicePolicyManager"

    invoke-static {p2, p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public createShowAdminSupportIntent(IZ)Landroid/content/Intent;
    .registers 5

    .line 16120
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetEnforcingAdminAndUserDetailsInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_c

    goto :goto_d

    :cond_c
    return-object v1

    .line 16122
    :cond_d
    :goto_d
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mcreateShowAdminSupportIntent(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 16130
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetEnforcingAdminAndUserDetailsInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 16131
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mcreateShowAdminSupportIntent(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Landroid/content/Intent;

    move-result-object p0

    .line 16132
    const-string p1, "android.app.extra.RESTRICTION"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public enforceAuditLoggingPolicy(Z)V
    .registers 5

    .line 16537
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmDevicePolicyEngine(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyEngine;

    move-result-object v0

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 16539
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$menforceLoggingPolicy(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V

    return-void
.end method

.method public enforcePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 16250
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetCallerIdentity(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)Lcom/android/server/devicepolicy/CallerIdentity;

    move-result-object p1

    .line 16251
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPermissions:Lcom/android/server/devicepolicy/PermissionChecker;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/devicepolicy/PermissionChecker;->enforce(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V

    return-void
.end method

.method public enforceSecurityLoggingPolicy(Z)V
    .registers 5

    .line 16530
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmDevicePolicyEngine(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyEngine;

    move-result-object v0

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 16532
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$menforceLoggingPolicy(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V

    return-void
.end method

.method public final findInteractAcrossProfilesResetMode(Ljava/lang/String;)I
    .registers 2

    .line 16436
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/16 p0, 0x5d

    .line 16438
    invoke-static {p0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    return p0
.end method

.method public getAllCrossProfilePackages(I)Ljava/util/List;
    .registers 2

    .line 16228
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllCrossProfilePackages(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationRestrictionsPerAdminForUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 5

    .line 16449
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    .line 16451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetUidForPackage(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)I

    move-result v1

    .line 16450
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 16452
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 16453
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_3c

    if-nez v0, :cond_25

    goto :goto_3c

    .line 16454
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only system may: get application restrictions for other user/app "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16458
    :cond_3c
    :goto_3c
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmDevicePolicyEngine(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyEngine;

    move-result-object p0

    .line 16460
    invoke-static {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->APPLICATION_RESTRICTIONS(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p1

    .line 16459
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 16463
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16465
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_57
    :goto_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 16466
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PolicyValue;

    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_57

    .line 16467
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_78

    goto :goto_57

    .line 16470
    :cond_78
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    const-string v1, "enterprise"

    invoke-virtual {p2, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8a

    .line 16473
    invoke-interface {p1, v0}, Ljava/util/List;->addFirst(Ljava/lang/Object;)V

    goto :goto_57

    .line 16475
    :cond_8a
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_8e
    return-object p1
.end method

.method public getCrossProfileWidgetProviders(I)Ljava/util/List;
    .registers 4

    .line 16020
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 16031
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    if-nez v1, :cond_13

    .line 16032
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_40

    .line 16034
    :cond_13
    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 16036
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    .line 16039
    :cond_1d
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object p0

    .line 16040
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz p0, :cond_3c

    .line 16042
    iget-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz p1, :cond_3c

    .line 16043
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_3c

    .line 16047
    :cond_38
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit v0

    return-object p0

    .line 16044
    :cond_3c
    :goto_3c
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    .line 16048
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_11

    throw p0
.end method

.method public getDefaultCrossProfilePackages()Ljava/util/List;
    .registers 1

    .line 16233
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceOwnerComponent(Z)Landroid/content/ComponentName;
    .registers 2

    .line 16360
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceOwnerUserId()I
    .registers 1

    .line 16365
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetDeviceOwnerUserIdUnchecked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)I

    move-result p0

    return p0
.end method

.method public getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
    .registers 1

    .line 16218
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmPolicyCache(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
    .registers 1

    .line 16223
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmStateCache(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getEnforcingUsers(Ljava/util/Set;)Ljava/util/List;
    .registers 6

    .line 16568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16569
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 16570
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    if-eqz p0, :cond_3b

    .line 16572
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 16573
    new-instance v2, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 16576
    :cond_3b
    new-instance v2, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_49
    return-object v0
.end method

.method public getPermittedInputMethodPackages(I)Ljava/util/Set;
    .registers 3

    .line 16563
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmDevicePolicyEngine(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyEngine;

    move-result-object p0

    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
    .registers 7

    .line 16175
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 16176
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_printing"

    .line 16177
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 16176
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 16178
    const-string p0, "DevicePolicyManager"

    const-string/jumbo v1, "printing is enabled for user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16179
    monitor-exit v0

    return-object v2

    :catchall_2b
    move-exception p0

    goto :goto_8f

    .line 16181
    :cond_2d
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3f

    .line 16183
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object p1

    .line 16186
    :cond_3f
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 16187
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_62

    .line 16196
    const-string p0, "DevicePolicyManager"

    const-string/jumbo p1, "packageInfo is inexplicably null"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16197
    monitor-exit v0

    return-object v2

    .line 16199
    :cond_62
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_6f

    .line 16201
    const-string p0, "DevicePolicyManager"

    const-string p1, "appInfo is inexplicably null"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16202
    monitor-exit v0

    return-object v2

    .line 16204
    :cond_6f
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_7e

    .line 16206
    const-string p0, "DevicePolicyManager"

    const-string p1, "appLabel is inexplicably null"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16207
    monitor-exit v0

    return-object v2

    .line 16209
    :cond_7e
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v1, "Core.PRINTING_DISABLED_NAMED_ADMIN"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v2, 0x104092b

    invoke-static {p0, v1, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetUpdatableString(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 16213
    :goto_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_7 .. :try_end_90} :catchall_2b

    throw p0
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .registers 2

    .line 16355
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 2

    .line 16067
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 4

    .line 16504
    invoke-static {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyDefinitionForUserRestriction(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p1

    .line 16506
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmDevicePolicyEngine(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyEngine;

    move-result-object v0

    .line 16507
    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 16509
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmDevicePolicyEngine(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyEngine;

    move-result-object v0

    .line 16510
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 16512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16513
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getEnforcingUsers(Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16514
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getEnforcingUsers(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 16256
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetCallerIdentity(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)Lcom/android/server/devicepolicy/CallerIdentity;

    move-result-object p1

    .line 16257
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPermissions:Lcom/android/server/devicepolicy/PermissionChecker;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/devicepolicy/PermissionChecker;->hasPermission(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)Z

    move-result p0

    return p0
.end method

.method public isActiveDeviceOwner(I)Z
    .registers 5

    .line 16073
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v0, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(IILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misDefaultDeviceOwner(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    return p0
.end method

.method public isActiveProfileOwner(I)Z
    .registers 5

    .line 16078
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v0, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(IILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    return p0
.end method

.method public isActiveSupervisionApp(I)Z
    .registers 6

    .line 16083
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v1, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(IILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 16086
    :cond_11
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 16087
    :try_start_18
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdminLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    move-result-object p1

    if-nez p1, :cond_28

    .line 16089
    monitor-exit v0

    return v1

    :catchall_26
    move-exception p0

    goto :goto_36

    .line 16092
    :cond_28
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misSupervisionComponentLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 16093
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_26

    throw p0
.end method

.method public isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z
    .registers 3

    .line 16370
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isDeviceOwnerInCallingUser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 16371
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isProfileOwnerInCallingUser(Ljava/lang/String;)Z

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

.method public final isDeviceOwnerInCallingUser(Ljava/lang/String;)Z
    .registers 3

    .line 16375
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v0, 0x1

    .line 16376
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 16379
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageEnabled(Ljava/lang/String;I)Z
    .registers 11

    .line 16338
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 16339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 16341
    :try_start_8
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v2, 0xc0000

    move-object v1, p1

    move v5, p2

    .line 16342
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 16347
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_23

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :catchall_23
    move-exception v0

    move-object p0, v0

    goto :goto_2b

    :cond_26
    const/4 p0, 0x0

    .line 16349
    :goto_27
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_2b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16350
    throw p0
.end method

.method public final isProfileOwnerInCallingUser(Ljava/lang/String;)Z
    .registers 3

    .line 16384
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 16386
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isUserAffiliatedWithDevice(I)Z
    .registers 2

    .line 16139
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misUserAffiliatedWithDeviceLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p0

    return p0
.end method

.method public isUserOrganizationManaged(I)Z
    .registers 2

    .line 16443
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceStateCache;->isUserOrganizationManaged(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$notifyCrossProfileProvidersChanged$0(ILjava/util/List;)V
    .registers 6

    .line 16100
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 16101
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    if-nez v1, :cond_f

    .line 16102
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_2b

    .line 16104
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16106
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_d

    .line 16107
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, p0, :cond_2a

    .line 16109
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 16110
    invoke-interface {v2, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;->onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2a
    return-void

    .line 16106
    :goto_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_d

    throw p0
.end method

.method public final synthetic lambda$notifyUnsafeOperationStateChanged$3(Landroid/os/Bundle;)V
    .registers 6

    .line 16420
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v0

    const-string v1, "android.app.action.OPERATION_SAFETY_STATE_CHANGED"

    if-eqz v0, :cond_11

    .line 16422
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16426
    :cond_11
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 16428
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v1, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msendProfileOwnerCommand(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1d

    :cond_33
    return-void
.end method

.method public final synthetic lambda$reportSeparateProfileChallengeChanged$1(I)V
    .registers 4

    .line 16161
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 16162
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 16163
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePasswordQualityCacheForUserGroup(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 16164
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    .registers 5

    .line 16098
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyUnsafeOperationStateChanged(Landroid/app/admin/DevicePolicySafetyChecker;IZ)V
    .registers 6

    .line 16412
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "invalid checker: should be %s, was %s"

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 16415
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 16416
    const-string v0, "android.app.extra.OPERATION_SAFETY_REASON"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16417
    const-string p2, "android.app.extra.OPERATION_SAFETY_STATE"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16419
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance p3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;Landroid/os/Bundle;)V

    invoke-virtual {p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public removeLocalPoliciesForSystemEntities(ILjava/util/List;)V
    .registers 3

    .line 16557
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmDevicePolicyEngine(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPoliciesForSystemEntities(ILjava/util/List;)V

    return-void
.end method

.method public removePoliciesForAdmins(ILjava/util/List;)V
    .registers 3

    .line 16551
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmDevicePolicyEngine(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmins(ILjava/util/List;)V

    return-void
.end method

.method public reportSeparateProfileChallengeChanged(I)V
    .registers 4

    .line 16160
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/16 v0, 0x6e

    .line 16167
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 16168
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misSeparateProfileChallengeEnabled(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 16169
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 16170
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->invalidateBinderCaches()V

    return-void
.end method

.method public resetOp(ILjava/lang/String;I)V
    .registers 5

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_14

    .line 16400
    const-class p1, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/CrossProfileAppsInternal;

    .line 16402
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->findInteractAcrossProfilesResetMode(Ljava/lang/String;)I

    move-result p0

    .line 16401
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/pm/CrossProfileAppsInternal;->setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V

    return-void

    .line 16398
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported op for DPM reset: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInternalEventsCallback(Ljava/util/function/Consumer;)V
    .registers 2

    .line 16545
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmSecurityLogMonitor(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/SecurityLogMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->setInternalEventsCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setUserRestrictionForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5

    .line 16524
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserRestrictionForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public supportsResetOp(I)Z
    .registers 2

    const/16 p0, 0x5d

    if-ne p1, p0, :cond_e

    .line 16391
    const-class p0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 16392
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
