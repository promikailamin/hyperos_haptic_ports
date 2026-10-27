.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
.super Landroid/app/admin/DevicePolicyManagerInternal;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/app/admin/DevicePolicyManagerLiteInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field private mWidgetProviderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyCrossProfileProvidersChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 12999
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManagerInternal;-><init>()V

    return-void
.end method

.method private broadcastIntentToCrossProfileManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "requiresPermission"    # Z

    .line 13217
    const-string v0, "DevicePolicyManager"

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 13219
    .local v7, "userId":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    :try_start_9
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    const-wide/16 v4, 0x400

    move-object v2, p1

    move v6, v7

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 13221
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 13222
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 13223
    .local v3, "receiver":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 13224
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4, v7, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->checkCrossProfilePackagePermissions(Ljava/lang/String;IZ)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 13226
    invoke-direct {p0, v4, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->checkModifyQuietModePermission(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 13227
    :cond_3c
    const-string v5, "Sending %s broadcast to %s."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    aput-object v4, v6, v8

    invoke-static {v0, v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13229
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 13230
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x1000000

    .line 13231
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 13232
    .local v5, "packageIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_69} :catch_6b

    .line 13234
    .end local v3    # "receiver":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageIntent":Landroid/content/Intent;
    :cond_69
    goto :goto_1e

    .line 13238
    .end local v1    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6a
    goto :goto_7b

    .line 13235
    :catch_6b
    move-exception v1

    .line 13236
    .local v1, "ex":Landroid/os/RemoteException;
    new-array v2, v10, [Ljava/lang/Object;

    .line 13237
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v1, v2, v8

    .line 13236
    const-string v3, "Cannot get list of broadcast receivers for %s because: %s."

    invoke-static {v0, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13239
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_7b
    return-void
.end method

.method private broadcastIntentToDevicePolicyManagerRoleHolder(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 13243
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 13244
    .local v6, "userId":I
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetDevicePolicyManagementRoleHolderPackageName(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 13245
    .local v7, "packageName":Ljava/lang/String;
    if-nez v7, :cond_f

    .line 13246
    return-void

    .line 13249
    :cond_f
    :try_start_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 13250
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v8, v0

    .line 13251
    .local v8, "packageIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    const-wide/16 v3, 0x400

    move-object v1, v8

    move v5, v6

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 13255
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 13256
    .local v0, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 13257
    return-void

    .line 13259
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 13260
    .local v2, "receiver":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 13261
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x1000000

    .line 13262
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 13263
    .local v3, "componentIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_5f} :catch_61

    .line 13264
    .end local v2    # "receiver":Landroid/content/pm/ResolveInfo;
    .end local v3    # "componentIntent":Landroid/content/Intent;
    goto :goto_35

    .line 13268
    .end local v0    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "packageIntent":Landroid/content/Intent;
    :cond_60
    goto :goto_76

    .line 13265
    :catch_61
    move-exception v0

    .line 13266
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 13267
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 13266
    const-string v2, "DevicePolicyManager"

    const-string v3, "Cannot get list of broadcast receivers for %s because: %s."

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13269
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_76
    return-void
.end method

.method private checkCrossProfilePackagePermissions(Ljava/lang/String;IZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "requiresPermission"    # Z

    .line 13297
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 13299
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 13300
    .local v1, "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCrossProfile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_3b

    .line 13303
    :cond_16
    const/4 v3, 0x1

    if-nez p3, :cond_1a

    .line 13304
    return v3

    .line 13306
    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 13307
    return v2

    .line 13310
    :cond_21
    :try_start_21
    const-class v4, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/CrossProfileAppsInternal;

    .line 13312
    .local v4, "crossProfileAppsService":Landroid/content/pm/CrossProfileAppsInternal;
    invoke-virtual {v4, p1, p2}, Landroid/content/pm/CrossProfileAppsInternal;->verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result v2
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2d} :catch_2e

    return v2

    .line 13314
    .end local v4    # "crossProfileAppsService":Landroid/content/pm/CrossProfileAppsInternal;
    :catch_2e
    move-exception v4

    .line 13315
    .local v4, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string v5, "DevicePolicyManager"

    const-string v6, "Cannot find the package %s to check for permissions."

    invoke-static {v5, v6, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13317
    return v2

    .line 13301
    .end local v4    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3b
    :goto_3b
    return v2
.end method

.method private checkModifyQuietModePermission(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 13277
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 13278
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 13279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13278
    invoke-virtual {v2, v3, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 13277
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 13280
    .local v2, "uid":I
    const-string v3, "android.permission.MODIFY_QUIET_MODE"

    const/4 v4, -0x1

    .line 13281
    invoke-static {v3, v2, v4, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_23} :catch_28

    if-nez v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 13280
    :goto_27
    return v0

    .line 13284
    .end local v2    # "uid":I
    :catch_28
    move-exception v2

    .line 13285
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v3, "DevicePolicyManager"

    const-string v4, "Cannot find the package %s to check for permissions."

    invoke-static {v3, v4, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13287
    return v1
.end method

.method private findInteractAcrossProfilesResetMode(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 13413
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 13414
    const/4 v0, 0x0

    goto :goto_12

    .line 13415
    :cond_c
    const/16 v0, 0x5d

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 13413
    :goto_12
    return v0
.end method

.method private isDeviceOwnerInCallingUser(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 13354
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 13355
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 13357
    .local v0, "deviceOwnerInCallingUser":Landroid/content/ComponentName;
    if-eqz v0, :cond_14

    .line 13358
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 13357
    :goto_15
    return v1
.end method

.method private isPackageEnabled(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 13322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 13323
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 13325
    .local v7, "ident":J
    :try_start_8
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v2, 0xc0000

    .line 13326
    move-object v1, p1

    move v4, v6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 13331
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_24

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 13333
    :goto_25
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13331
    return v1

    .line 13333
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :catchall_29
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13334
    throw v0
.end method

.method private isProfileOwnerInCallingUser(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 13362
    nop

    .line 13363
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 13364
    .local v0, "profileOwnerInCallingUser":Landroid/content/ComponentName;
    if-eqz v0, :cond_17

    .line 13365
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 13364
    :goto_18
    return v1
.end method

.method static synthetic lambda$getPrintingDisabledReasonForUser$1(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13157
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 13158
    :catch_6
    move-exception v0

    .line 13159
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "DevicePolicyManager"

    const-string v2, "getPackageInfo error"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13160
    const/4 v1, 0x0

    return-object v1
.end method

.method private notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13073
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13074
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13075
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_23

    .line 13076
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 13077
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_22

    .line 13078
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 13079
    .local v3, "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    invoke-interface {v3, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;->onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V

    .line 13077
    .end local v3    # "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 13081
    .end local v2    # "i":I
    :cond_22
    return-void

    .line 13075
    .end local v0    # "listenerCount":I
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 13029
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13030
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    if-nez v1, :cond_12

    .line 13031
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 13033
    :cond_12
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 13034
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13036
    :cond_1f
    monitor-exit v0

    .line 13037
    return-void

    .line 13036
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "parentHandle"    # Landroid/os/UserHandle;
    .param p3, "requiresPermission"    # Z

    .line 13207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13208
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13209
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DevicePolicyManager"

    const-string v2, "Sending %s broadcast to manifest receivers."

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13210
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->broadcastIntentToCrossProfileManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 13212
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->broadcastIntentToDevicePolicyManagerRoleHolder(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 13213
    return-void
.end method

.method public canSilentlyInstallPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .line 13112
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 13113
    return v0

    .line 13116
    :cond_4
    new-instance v1, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v2}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(ILjava/lang/String;Landroid/content/ComponentName;)V

    .line 13117
    .local v1, "caller":Lcom/android/server/devicepolicy/CallerIdentity;
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isUserAffiliatedWithDevice(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 13118
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isActiveProfileOwner(I)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 13119
    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misDefaultDeviceOwner(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misFinancedDeviceOwner(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 13121
    :cond_2a
    const/4 v0, 0x1

    return v0

    .line 13123
    :cond_2c
    return v0
.end method

.method public createShowAdminSupportIntent(IZ)Landroid/content/Intent;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "useDefaultIfNoAdmin"    # Z

    .line 13088
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetEnforcingAdminAndUserDetailsInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_c

    goto :goto_d

    .line 13092
    :cond_c
    return-object v1

    .line 13090
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mcreateShowAdminSupportIntent(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "userRestriction"    # Ljava/lang/String;

    .line 13097
    const/4 v0, 0x0

    .line 13098
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetEnforcingAdminAndUserDetailsInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 13099
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mcreateShowAdminSupportIntent(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Landroid/content/Intent;

    move-result-object v0

    .line 13100
    const-string v1, "android.app.extra.RESTRICTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13102
    :cond_14
    return-object v0
.end method

.method public getAllCrossProfilePackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13196
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCrossProfileWidgetProviders(I)Ljava/util/List;
    .registers 7
    .param p1, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13005
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13006
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    if-nez v1, :cond_13

    .line 13007
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 13009
    :cond_13
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 13010
    .local v1, "ownerComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_23

    .line 13011
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 13014
    :cond_23
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v2

    .line 13015
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 13017
    .local v3, "admin":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-eqz v3, :cond_44

    iget-object v4, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v4, :cond_44

    iget-object v4, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 13018
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_44

    .line 13022
    :cond_40
    iget-object v4, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit v0

    return-object v4

    .line 13019
    :cond_44
    :goto_44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 13023
    .end local v1    # "ownerComponent":Landroid/content/ComponentName;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    .end local v3    # "admin":Lcom/android/server/devicepolicy/ActiveAdmin;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public getDefaultCrossProfilePackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13201
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOwnerUserId()I
    .registers 2

    .line 13344
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    move-result v0

    return v0
.end method

.method protected getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
    .registers 2

    .line 13186
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmPolicyCache(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
    .registers 2

    .line 13191
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmStateCache(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    move-result-object v0

    return-object v0
.end method

.method public getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
    .registers 14
    .param p1, "userId"    # I

    .line 13143
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13144
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_printing"

    .line 13145
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 13144
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2d

    .line 13146
    const-string v1, "DevicePolicyManager"

    const-string/jumbo v5, "printing is enabled for user %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v1, v5, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13147
    monitor-exit v0

    return-object v4

    .line 13149
    :cond_2d
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 13150
    .local v1, "ownerPackage":Ljava/lang/String;
    if-nez v1, :cond_40

    .line 13151
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 13153
    :cond_40
    move-object v5, v1

    .line 13154
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 13155
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 13163
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_64

    .line 13164
    const-string v2, "DevicePolicyManager"

    const-string/jumbo v3, "packageInfo is inexplicably null"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13165
    monitor-exit v0

    return-object v4

    .line 13167
    :cond_64
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 13168
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v8, :cond_71

    .line 13169
    const-string v2, "DevicePolicyManager"

    const-string v3, "appInfo is inexplicably null"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13170
    monitor-exit v0

    return-object v4

    .line 13172
    :cond_71
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 13173
    .local v9, "appLabel":Ljava/lang/CharSequence;
    if-nez v9, :cond_80

    .line 13174
    const-string v2, "DevicePolicyManager"

    const-string v3, "appLabel is inexplicably null"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13175
    monitor-exit v0

    return-object v4

    .line 13177
    :cond_80
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v10, "Core.PRINTING_DISABLED_NAMED_ADMIN"

    const v11, 0x104081c

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v2

    invoke-static {v4, v10, v11, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetUpdatableString(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 13181
    .end local v1    # "ownerPackage":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "appLabel":Ljava/lang/CharSequence;
    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_7 .. :try_end_93} :catchall_91

    throw v1
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .registers 3
    .param p1, "userId"    # I

    .line 13339
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 13042
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public isActiveDeviceOwner(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 13048
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v1, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(ILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misDefaultDeviceOwner(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v0

    return v0
.end method

.method public isActiveProfileOwner(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 13053
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v1, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(ILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v0

    return v0
.end method

.method public isActiveSupervisionApp(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 13058
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v1, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(ILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 13059
    return v1

    .line 13061
    :cond_10
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13062
    :try_start_17
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdminLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    move-result-object v2

    .line 13063
    .local v2, "admin":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-nez v2, :cond_25

    .line 13064
    monitor-exit v0

    return v1

    .line 13067
    :cond_25
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misSupervisionComponentLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 13068
    .end local v2    # "admin":Lcom/android/server/devicepolicy/ActiveAdmin;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 13349
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isDeviceOwnerInCallingUser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 13350
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isProfileOwnerInCallingUser(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 13349
    :goto_10
    return v0
.end method

.method public isUserAffiliatedWithDevice(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 13107
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misUserAffiliatedWithDeviceLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$reportSeparateProfileChallengeChanged$0$com-android-server-devicepolicy-DevicePolicyManagerService$LocalService(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13129
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13130
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 13131
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePasswordQualityCacheForUserGroup(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 13132
    monitor-exit v0

    .line 13133
    return-void

    .line 13132
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public notifyUnsafeOperationStateChanged(Landroid/app/admin/DevicePolicySafetyChecker;IZ)V
    .registers 9
    .param p1, "checker"    # Landroid/app/admin/DevicePolicySafetyChecker;
    .param p2, "reason"    # I
    .param p3, "isSafe"    # Z

    .line 13393
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string/jumbo v1, "invalid checker: should be %s, was %s"

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 13396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13397
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.app.extra.OPERATION_SAFETY_REASON"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13398
    const-string v1, "android.app.extra.OPERATION_SAFETY_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13400
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v1

    const-string v2, "android.app.action.OPERATION_SAFETY_STATE_CHANGED"

    if-eqz v1, :cond_40

    .line 13402
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13405
    :cond_40
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 13407
    .local v3, "profileOwnerId":I
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4, v2, v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msendProfileOwnerCommand(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 13409
    .end local v3    # "profileOwnerId":I
    goto :goto_4c

    .line 13410
    :cond_62
    return-void
.end method

.method public reportSeparateProfileChallengeChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 13128
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 13134
    nop

    .line 13135
    const/16 v0, 0x6e

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 13136
    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misSeparateProfileChallengeEnabled(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 13137
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 13138
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->invalidateBinderCaches()V

    .line 13139
    return-void
.end method

.method public resetOp(ILjava/lang/String;I)V
    .registers 7
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 13376
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_14

    .line 13379
    const-class v0, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 13381
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->findInteractAcrossProfilesResetMode(Ljava/lang/String;)I

    move-result v1

    .line 13380
    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/CrossProfileAppsInternal;->setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V

    .line 13382
    return-void

    .line 13377
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported op for DPM reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsResetOp(I)Z
    .registers 3
    .param p1, "op"    # I

    .line 13370
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_e

    const-class v0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 13371
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 13370
    :goto_f
    return v0
.end method
