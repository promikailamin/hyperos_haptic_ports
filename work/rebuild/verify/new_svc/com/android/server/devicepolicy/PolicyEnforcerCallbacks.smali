.class public abstract Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;
.super Ljava/lang/Object;
.source "PolicyEnforcerCallbacks.java"


# direct methods
.method public static synthetic $r8$lambda$3A7A7sIJ5RIm2lhycHAktZ_v_wg(Ljava/lang/Boolean;Landroid/content/Context;I)V
    .registers 3

    if-eqz p0, :cond_c

    .line 426
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 427
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->suspendPersonalAppsInPackageManager(Landroid/content/Context;I)V

    return-void

    .line 429
    :cond_c
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 430
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->unsuspendAdminSuspendedPackages(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4ggaUHwmXRH9DSZY2qstuZxIcwI(Landroid/content/Context;ILjava/util/Set;)V
    .registers 8

    .line 251
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 252
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 253
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    if-nez p2, :cond_15

    move-object v2, v1

    goto :goto_1d

    .line 256
    :cond_15
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    .line 255
    :goto_1d
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->setOwnerProtectedPackages(ILjava/util/List;)V

    .line 257
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    if-nez p2, :cond_2b

    goto :goto_30

    .line 259
    :cond_2b
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 258
    :goto_30
    invoke-virtual {v2, v1, p1}, Landroid/app/usage/UsageStatsManagerInternal;->setAdminProtectedPackages(Ljava/util/Set;I)V

    if-eqz p2, :cond_6c

    .line 261
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_6c

    .line 265
    :cond_3c
    invoke-static {p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->resolveUsers(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 266
    invoke-static {p2, v0, v1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setBgUsageAppOp(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;ILandroid/app/AppOpsManager;)V

    .line 268
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 269
    invoke-virtual {v0, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->setPackageStoppedState(Ljava/lang/String;ZI)V

    goto :goto_5b

    :cond_6c
    :goto_6c
    return-void
.end method

.method public static synthetic $r8$lambda$923vf4aExZGFKsRX2l5EqcJweW4()V
    .registers 3

    .line 413
    :try_start_0
    const-string/jumbo v0, "window"

    .line 414
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 415
    invoke-interface {v0}, Landroid/view/IWindowManager;->refreshScreenCaptureDisabled()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 417
    const-string v1, "PolicyEnforcerCallbacks"

    const-string v2, "Unable to notify WindowManager."

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$D1RBEpFVJNTU1BZDBtLcWbDin4w(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;
    .registers 4

    .line 367
    instance-of v0, p0, Landroid/app/admin/PackagePolicyKey;

    if-eqz v0, :cond_29

    .line 371
    check-cast p0, Landroid/app/admin/PackagePolicyKey;

    .line 372
    invoke-virtual {p0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p1, :cond_1b

    .line 376
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 375
    :goto_1c
    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 374
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 368
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$DDtSjtqogfjCncCFA0dQ-ktYsm4(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;I)Ljava/util/concurrent/CompletableFuture;
    .registers 7

    .line 110
    instance-of v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;

    if-eqz v0, :cond_4b

    .line 114
    check-cast p0, Landroid/app/admin/PackagePermissionPolicyKey;

    .line 115
    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPermissionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1b

    const/4 p2, 0x0

    goto :goto_1f

    .line 121
    :cond_1b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 125
    :goto_1f
    new-instance v0, Landroid/permission/AdminPermissionControlParams;

    .line 126
    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPermissionName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, p2, v2}, Landroid/permission/AdminPermissionControlParams;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 129
    new-instance p0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 131
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->getPermissionControllerManager(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/permission/PermissionControllerManager;

    move-result-object p2

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 135
    new-instance v1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda12;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 133
    invoke-virtual {p2, p3, v0, p1, v1}, Landroid/permission/PermissionControllerManager;->setRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-object p0

    .line 111
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "policyKey is not of type PermissionGrantStatePolicyKey, passed in policyKey is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$GufZ51Ay23GzqrICE8M3gGd8Aqc(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2

    .line 450
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 452
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p1, 0x1

    .line 453
    :goto_f
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUsbDataSignal(Landroid/content/Context;Z)V

    .line 454
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L1rxGGUzNJ4aUGTAR8iOoKaDmig(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3

    .line 216
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_12

    .line 218
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_12

    .line 219
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    :cond_12
    if-eqz p1, :cond_1d

    .line 221
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 224
    :goto_1e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time"

    .line 223
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 222
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QKViEWd2gERgQLjX9mqDPmUb95w(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3

    .line 89
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_12

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_12

    .line 92
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    :cond_12
    if-eqz p1, :cond_1d

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 97
    :goto_1e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time_zone"

    .line 96
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UERPhmxAVy3sxr1v41E8a4Miyr0(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V
    .registers 4

    .line 304
    :try_start_0
    instance-of v0, p0, Landroid/app/admin/IntentFilterPolicyKey;

    if-eqz v0, :cond_1e

    .line 308
    check-cast p0, Landroid/app/admin/IntentFilterPolicyKey;

    .line 310
    invoke-virtual {p0}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p1, :cond_17

    .line 314
    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_1a

    .line 317
    :cond_17
    invoke-interface {v0, p0, p2}, Landroid/content/pm/IPackageManager;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V

    .line 319
    :goto_1a
    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V

    return-void

    .line 305
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type IntentFilterPolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_36} :catch_36

    :catch_36
    move-exception p0

    .line 322
    const-string p1, "PolicyEnforcerCallbacks"

    const-string p2, "Error adding/removing persistent preferred activity"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$WijCbL7fEj9lotKYMgvPtIYYdmE(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4

    .line 350
    instance-of v0, p0, Landroid/app/admin/UserRestrictionPolicyKey;

    if-eqz v0, :cond_27

    .line 354
    check-cast p0, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 356
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 358
    invoke-virtual {p0}, Landroid/app/admin/UserRestrictionPolicyKey;->getRestriction()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    .line 357
    :goto_1d
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/pm/UserManagerInternal;->setUserRestriction(ILjava/lang/String;Z)V

    .line 359
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 351
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type UserRestrictionPolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$gxoPg1ULKK1uZv0lpeBqocEMEys(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;
    .registers 4

    .line 332
    instance-of v0, p0, Landroid/app/admin/PackagePolicyKey;

    if-eqz v0, :cond_22

    .line 336
    check-cast p0, Landroid/app/admin/PackagePolicyKey;

    .line 337
    invoke-virtual {p0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_17

    .line 340
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 338
    :goto_18
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUninstallBlockedUnchecked(Ljava/lang/String;ZI)V

    .line 342
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 333
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$hroBZBFtiu0Fc4d2ycR1WqFQV2U(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 5

    .line 198
    check-cast p0, Landroid/app/admin/PackagePolicyKey;

    .line 199
    invoke-virtual {p0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x40000000    # 2.0f

    .line 203
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mhU4RwcN2rvgJiX5zFqW30EJig0(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    .line 402
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    .line 403
    instance-of v1, v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    .line 404
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->setContentProtectionPolicy(ILjava/lang/Integer;)V

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$o4x0wEv9V1ApGxPYNb629kkq4D0(Landroid/content/pm/UserInfo;)Ljava/lang/Integer;
    .registers 1

    .line 282
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zi0x2TqIW93rOUZeDZ-HpdjcV44(ILjava/lang/Boolean;)V
    .registers 4

    .line 384
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    .line 385
    instance-of v1, v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    if-eqz v1, :cond_1b

    .line 386
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    if-eqz p1, :cond_14

    .line 388
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 387
    :goto_15
    invoke-virtual {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->setScreenCaptureDisallowedUser(IZ)V

    .line 389
    invoke-static {}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->updateScreenCaptureDisabled()V

    :cond_1b
    return-void
.end method

.method public static addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 302
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda8;

    invoke-direct {p1, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda8;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 325
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static enforceAuditLogging(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 168
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 169
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceAuditLoggingPolicy(Z)V

    .line 170
    invoke-static {p2}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static enforceSecurityLogging(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 160
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 161
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceSecurityLoggingPolicy(Z)V

    .line 162
    invoke-static {p2}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static getPermissionControllerManager(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/permission/PermissionControllerManager;
    .registers 4

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 145
    const-class p1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionControllerManager;

    return-object p0

    .line 148
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/permission/PermissionControllerManager;

    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionControllerManager;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    .line 152
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static noOp(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 78
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static resolveUsers(I)Ljava/util/List;
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_22

    .line 280
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    const/4 v0, 0x1

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 282
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 284
    :cond_22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setApplicationHidden(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 366
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda7;

    invoke-direct {p1, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda7;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setApplicationRestrictions(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 197
    new-instance p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda9;

    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda9;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 206
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setAutoTimePolicy(Ljava/lang/Integer;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 215
    new-instance p2, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setAutoTimeZonePolicy(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 88
    new-instance p2, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda11;

    invoke-direct {p2, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setBgUsageAppOp(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;ILandroid/app/AppOpsManager;)V
    .registers 11

    .line 290
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/high16 v0, 0xc0000

    int-to-long v3, v0

    .line 292
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move-object v1, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 294
    invoke-static {p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setBgUsageAppOp(Landroid/app/AppOpsManager;Landroid/content/pm/ApplicationInfo;)V

    :cond_23
    move-object p1, v1

    move p2, v6

    goto :goto_4

    :cond_26
    return-void
.end method

.method public static setContentProtectionPolicy(Ljava/lang/Integer;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 400
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 407
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setCrossProfileWidgetProviderPolicy(Ljava/util/Set;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 231
    const-string p0, "PolicyEnforcerCallbacks"

    const-string p1, "Call setCrossProfileWidgetProviderPolicy while flag is off"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setLockTask(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;I)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 175
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz p0, :cond_11

    .line 178
    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getPackages()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getFlags()I

    move-result p0

    goto :goto_13

    :cond_11
    const/16 p0, 0x10

    .line 181
    :goto_13
    invoke-static {p1, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Landroid/content/Context;Ljava/util/List;I)V

    .line 182
    invoke-static {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskFeaturesLocked(II)V

    .line 183
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setMtePolicy(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 7

    const/4 p1, 0x0

    .line 462
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p0, :cond_8

    move-object p0, p2

    :cond_8
    const/4 p3, 0x2

    .line 467
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    .line 468
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 465
    invoke-static {p2, v0, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 469
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_39

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MTE policy is not a known one: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PolicyEnforcerCallbacks"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 480
    :cond_39
    const-string/jumbo p2, "ro.arm64.memtag.bootctl_settings_toggle"

    .line 481
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 480
    const-string/jumbo p2, "ro.arm64.memtag.bootctl_device_policy_manager"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_50

    .line 483
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 486
    :cond_50
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "arm64.memtag.bootctl"

    if-ne p1, v1, :cond_5f

    .line 487
    const-string/jumbo p0, "memtag"

    invoke-static {p2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 488
    :cond_5f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p3, :cond_6c

    .line 489
    const-string/jumbo p0, "memtag-off"

    invoke-static {p2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 490
    :cond_6c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_77

    .line 491
    const-string p0, "default"

    invoke-static {p2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_77
    :goto_77
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setPermissionGrantState(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 5

    .line 109
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3, p1, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setPersonalAppsSuspended(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 425
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Boolean;Landroid/content/Context;I)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 433
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setScreenCaptureDisabled(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 383
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Boolean;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 392
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setUninstallBlocked(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 331
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda5;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setUsbDataSignalingEnabled(Ljava/lang/Boolean;Landroid/content/Context;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 449
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static setUserControlDisabledPackages(Ljava/util/Set;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 250
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILjava/util/Set;)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 274
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setUserRestriction(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 349
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda15;

    invoke-direct {p1, p3, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda15;-><init>(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static suspendPersonalAppsInPackageManager(Landroid/content/Context;I)V
    .registers 6

    .line 437
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->forUser(Landroid/content/Context;I)Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;

    move-result-object p0

    .line 438
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getPersonalAppsForSuspension()[Ljava/lang/String;

    move-result-object p0

    .line 439
    const-string v0, ","

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PolicyEnforcerCallbacks"

    const-string v3, "Suspending personal apps: %s"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x1

    .line 441
    invoke-virtual {v1, p1, p0, v3}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(I[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    .line 442
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to suspend apps: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return-void
.end method

.method public static updateScreenCaptureDisabled()V
    .registers 2

    .line 411
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
