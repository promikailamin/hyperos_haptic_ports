.class public final Lcom/android/server/permission/access/permission/PermissionService;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# static fields
.field public static final BACKGROUND_RATIONALE_CHANGE_ID:J

.field public static final BACKUP_TIMEOUT_MILLIS:J

.field public static final Companion:Lcom/android/server/permission/access/permission/PermissionService$Companion;

.field public static final FULLER_PERMISSIONS:Landroid/util/ArrayMap;

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;


# instance fields
.field public final context:Landroid/content/Context;

.field public final devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

.field public handler:Landroid/os/Handler;

.field public handlerThread:Landroid/os/HandlerThread;

.field public final isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

.field public metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mountedStorageVolumes:Landroid/util/ArraySet;

.field public onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

.field public onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

.field public packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field public final permissionControllerManagers:Landroid/util/SparseArray;

.field public permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

.field public platformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;

.field public final storageVolumeLock:Ljava/lang/Object;

.field public final storageVolumePackageNames:Landroid/util/ArrayMap;

.field public systemConfig:Lcom/android/server/SystemConfig;

.field public userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public userManagerService:Lcom/android/server/pm/UserManagerService;

.field public virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->Companion:Lcom/android/server/permission/access/permission/PermissionService$Companion;

    .line 2838
    const-class v0, Lcom/android/server/permission/access/permission/PermissionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    const-wide/32 v0, 0x8c7dff3

    .line 2846
    sput-wide v0, Lcom/android/server/permission/access/permission/PermissionService;->BACKGROUND_RATIONALE_CHANGE_ID:J

    .line 2849
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2850
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2851
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 2853
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 2856
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/collection/ArraySetExtensionsKt;->arraySetOf([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    .line 2866
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .registers 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 114
    const-string/jumbo v0, "permission"

    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 117
    const-string v0, "device-permission"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.permission.DevicePermissionPolicy"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 119
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 134
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    .line 135
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .line 137
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    .line 144
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManagers:Landroid/util/SparseArray;

    .line 153
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static final synthetic access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V
    .registers 4

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->enforcePermissionTreeSize(Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V

    return-void
.end method

.method public static final synthetic access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .registers 3

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getAndEnforcePermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/content/Context;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getFULLER_PERMISSIONS$cp()Landroid/util/ArrayMap;
    .registers 1

    .line 111
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getLOG_TAG$cp()Ljava/lang/String;
    .registers 1

    .line 111
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getNOTIFICATIONS_PERMISSIONS$cp()Landroid/util/ArraySet;
    .registers 1

    .line 111
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    return-object v0
.end method

.method public static final synthetic access$getOnPermissionFlagsChangedListener$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getOnPermissionsChangeListeners$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    return-object p0
.end method

.method public static final synthetic access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getService$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/AccessCheckingService;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    return-object p0
.end method

.method public static final synthetic access$isDelayedPermissionBackupFinished$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static final synthetic access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V
    .registers 3

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->killUid(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setAppOpPermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V
    .registers 6

    .line 111
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/permission/PermissionService;->setAppOpPermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .registers 11

    .line 111
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 111
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const/16 p3, 0x2710

    .line 273
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V
    .registers 18

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_5

    const/4 p6, 0x0

    :cond_5
    move v6, p6

    and-int/lit8 p6, p8, 0x40

    if-eqz p6, :cond_13

    const/4 p6, 0x0

    move-object v7, p6

    :goto_c
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    goto :goto_15

    :cond_13
    move-object v7, p7

    goto :goto_c

    .line 801
    :goto_15
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 14

    if-eqz p2, :cond_2b

    .line 1763
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1768
    :cond_a
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_16
    move-object v5, v0

    .line 1771
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1772
    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    .line 1773
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    :cond_2a
    return v1

    .line 1762
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "permissionName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V
    .registers 12

    const/4 v0, 0x2

    .line 1791
    invoke-virtual {p0, p2, v0, p4}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1796
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    move-object v4, v0

    goto :goto_18

    :cond_17
    move-object v4, p3

    :goto_18
    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, p4

    .line 1798
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    return-void
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 5

    .line 1982
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1983
    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    .line 1984
    const-string v2, "addOnPermissionsChangeListener"

    .line 1982
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    if-nez p0, :cond_14

    const-string/jumbo p0, "onPermissionsChangeListeners"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->addListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 17

    .line 380
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_ee

    .line 382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 383
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v4, 0x0

    if-nez v3, :cond_14

    const-string/jumbo v3, "packageManagerLocal"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_14
    invoke-interface {v3}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v3

    :try_start_18
    invoke-virtual {p0, v3, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_e6

    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v2, :cond_de

    .line 386
    iget v2, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v2, :cond_32

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2a

    goto :goto_32

    .line 387
    :cond_2a
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Label must be specified in permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 389
    :cond_32
    :goto_32
    new-instance v9, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 391
    iget-object v10, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 312
    :try_start_3e
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v10}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_4f

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_50

    :catchall_4b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_dc

    :cond_4f
    move-object v4, v2

    .line 313
    :goto_50
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v12

    .line 314
    new-instance v13, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v13, v4, v12}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 392
    # invokes: Lcom/android/server/permission/access/permission/PermissionService;->getAndEnforcePermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    invoke-static {p0, v13, v0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v2

    .line 393
    # invokes: Lcom/android/server/permission/access/permission/PermissionService;->enforcePermissionTreeSize(Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V
    invoke-static {p0, v13, p1, v2}, Lcom/android/server/permission/access/permission/PermissionService;->access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V

    .line 395
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    iput-object v3, v9, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_91

    .line 43
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7a

    goto :goto_91

    .line 397
    :cond_7a
    new-instance p0, Ljava/lang/SecurityException;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 402
    :cond_91
    :goto_91
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 405
    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v0}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v0

    .line 404
    iput v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 408
    new-instance v0, Lcom/android/server/permission/access/permission/Permission;

    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v4

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 410
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object p0

    const/4 v1, 0x1

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v13, v0, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;Z)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v10}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v10, v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v10}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v0, v12}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_d4
    .catchall {:try_start_3e .. :try_end_d4} :catchall_4b

    .line 311
    monitor-exit v11

    .line 413
    iget-object p0, v9, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_da

    return v1

    :cond_da
    const/4 p0, 0x0

    return p0

    .line 311
    :goto_dc
    monitor-exit v11

    throw p0

    .line 384
    :cond_de
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Instant apps cannot add permissions"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_e6
    move-exception v0

    move-object p0, v0

    .line 383
    :try_start_e8
    throw p0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e9

    :catchall_e9
    move-exception v0

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 381
    :cond_ee
    const-string/jumbo p0, "permissionName cannot be null"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public backupRuntimePermissions(I)[B
    .registers 6

    .line 2052
    const-string/jumbo v0, "userId cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 2053
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2054
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionControllerManager(I)Landroid/permission/PermissionControllerManager;

    move-result-object p0

    .line 2055
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2056
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2057
    new-instance v3, Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;

    invoke-direct {v3, v0}, Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2054
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2061
    :try_start_1f
    sget-wide v1, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    .line 2064
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-nez v0, :cond_39

    .line 2065
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_39

    .line 2066
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_38

    goto :goto_39

    .line 2070
    :cond_38
    throw p0

    .line 2067
    :cond_39
    :goto_39
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create permission backup for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final calculatePermissionTreeFootprint(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/permission/Permission;)I
    .registers 8

    .line 467
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v0, p1, :cond_3b

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    check-cast v2, Ljava/lang/String;

    .line 469
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v4

    if-ne v2, v4, :cond_38

    .line 34
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_3b
    return v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15

    .line 616
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_14

    return v2

    .line 621
    :cond_14
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_1f

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v0, v3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    .line 622
    :try_start_27
    invoke-interface {v3, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v6
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_53

    .line 621
    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v6, :cond_31

    return v2

    .line 626
    :cond_31
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_42

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_43

    :cond_42
    move-object v1, p1

    :goto_43
    invoke-direct {v5, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v4, p0

    move-object v8, p2

    move-object v9, p3

    move v7, p4

    .line 626
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_52

    const/4 p0, 0x0

    return p0

    :cond_52
    return v2

    :catchall_53
    move-exception v0

    move-object p0, v0

    .line 621
    :try_start_55
    throw p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v0

    move-object p1, v0

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 555
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 556
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_10
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v6, -0x1

    if-nez v0, :cond_18

    return v6

    .line 563
    :cond_18
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v2, "packageManagerInternal"

    if-nez v0, :cond_23

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_23
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_73

    .line 567
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez p1, :cond_32

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_32
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_53

    .line 570
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkUidPermission: PackageState not found for AndroidPackage "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 578
    :cond_53
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v0, v1

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_65

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_65
    invoke-direct {v1, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .line 579
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_72

    return v7

    :cond_72
    return v6

    :cond_73
    move-object v0, p0

    move-object v4, p2

    .line 588
    invoke-virtual {v0, p1, v4}, Lcom/android/server/permission/access/permission/PermissionService;->isSystemUidPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7c

    return v7

    :cond_7c
    return v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 2120
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_13b

    .line 2124
    :cond_c
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p1, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2126
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    if-eqz p3, :cond_f7

    array-length v2, p3

    if-nez v2, :cond_1f

    goto/16 :goto_f7

    :cond_1f
    aget-object v2, p3, v1

    const-string v3, "-a"

    invoke-static {v2, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_f7

    .line 2135
    :cond_2b
    aget-object v2, p3, v1

    const-string v3, "--app-id"

    invoke-static {v2, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "."

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_90

    array-length v2, p3

    if-ne v2, v4, :cond_90

    .line 2136
    aget-object p3, p3, v5

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 2137
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_50

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_51

    :cond_50
    move-object p2, v1

    :goto_51
    invoke-direct {v2, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2138
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p2

    .line 2139
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2140
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V

    return-void

    .line 2142
    :cond_78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown app ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2145
    :cond_90
    aget-object v1, p3, v1

    const-string v2, "--package"

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    array-length v1, p3

    if-ne v1, v4, :cond_f1

    .line 2146
    aget-object p3, p3, v5

    .line 2147
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_ad

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_ae

    :cond_ad
    move-object p2, v1

    :goto_ae
    invoke-direct {v2, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2148
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz p2, :cond_d9

    .line 2150
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V

    return-void

    .line 2152
    :cond_d9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2157
    :cond_f1
    const-string p0, "Usage: dumpsys permissionmgr [--app-id <APP_ID>] [--package <PACKAGE_NAME>]"

    .line 2156
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2127
    :cond_f7
    :goto_f7
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p3

    if-nez p3, :cond_105

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_106

    :cond_105
    move-object p2, p3

    :goto_106
    invoke-direct {v2, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2128
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->dumpSystemState(Landroid/util/IndentingPrintWriter;Lcom/android/server/permission/access/AccessState;)V

    .line 2129
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p3

    :goto_11c
    if-ge v1, p3, :cond_13b

    .line 48
    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_138

    .line 2131
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    invoke-virtual {p0, p1, v0, v4, v3}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V

    :cond_138
    add-int/lit8 v1, v1, 0x1

    goto :goto_11c

    :cond_13b
    :goto_13b
    return-void
.end method

.method public final dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V
    .registers 23

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 2239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2241
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v4

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v4, :cond_223

    .line 45
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v7

    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/UserState;

    .line 2242
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2244
    const-string v7, "Permissions:"

    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2246
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedMap;

    const-string v9, ", flags="

    const-string v10, ": granted="

    if-eqz v7, :cond_a0

    .line 47
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v11

    const/4 v12, 0x0

    :goto_66
    if-ge v12, v11, :cond_a0

    .line 48
    invoke-virtual {v7, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    check-cast v13, Ljava/lang/String;

    .line 2250
    sget-object v15, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v15, v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v5

    .line 2253
    invoke-virtual {v15, v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2251
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_66

    .line 2306
    :cond_a0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2258
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    if-eqz v5, :cond_136

    .line 44
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result v7

    const/4 v11, 0x0

    :goto_b4
    if-ge v11, v7, :cond_136

    .line 45
    invoke-virtual {v5, v11}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v11}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v12, Ljava/lang/String;

    .line 2262
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permissions (Device "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "):"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 47
    invoke-virtual {v13}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v12

    const/4 v14, 0x0

    :goto_e3
    if-ge v14, v12, :cond_129

    .line 48
    invoke-virtual {v13, v14}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 p3, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v15, Ljava/lang/String;

    move/from16 v16, v4

    .line 2265
    sget-object v4, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    move-object/from16 v17, v5

    invoke-virtual {v4, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v5

    .line 2268
    invoke-virtual {v4, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2266
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    move-object/from16 v5, v17

    goto :goto_e3

    :cond_129
    move-object/from16 p3, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 2306
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b4

    :cond_136
    move-object/from16 p3, v3

    move/from16 v16, v4

    .line 2274
    const-string v3, "App ops:"

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2276
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    const-string v5, ": mode="

    if-eqz v4, :cond_183

    .line 47
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v7

    const/4 v9, 0x0

    :goto_155
    if-ge v9, v7, :cond_183

    .line 48
    invoke-virtual {v4, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    check-cast v10, Ljava/lang/String;

    .line 2278
    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_155

    .line 2306
    :cond_183
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    if-eqz v2, :cond_218

    .line 44
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v4

    const/4 v7, 0x0

    :goto_18d
    if-ge v7, v4, :cond_218

    .line 45
    invoke-virtual {v2, v7}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2283
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2285
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "version="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2288
    invoke-virtual {v8}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v9, :cond_20e

    .line 47
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v10

    const/4 v11, 0x0

    :goto_1e0
    if-ge v11, v10, :cond_20e

    .line 48
    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    check-cast v12, Ljava/lang/String;

    .line 2292
    invoke-static {v13}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v13

    .line 2293
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1e0

    .line 2306
    :cond_20e
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2306
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_18d

    .line 2306
    :cond_218
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    goto/16 :goto_26

    .line 2306
    :cond_223
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpSystemState(Landroid/util/IndentingPrintWriter;Lcom/android/server/permission/access/AccessState;)V
    .registers 15

    .line 2199
    const-string p0, "Permissions:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2201
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    const-string v3, ", appId="

    if-ge v2, v0, :cond_a3

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    check-cast v4, Ljava/lang/String;

    .line 46
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2202
    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2205
    sget-object v7, Lcom/android/server/permission/access/permission/Permission;->Companion:Lcom/android/server/permission/access/permission/Permission$Companion;

    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/permission/access/permission/Permission$Companion;->typeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2207
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v9

    .line 2208
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "toString(...)"

    invoke-static {v10, v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": type="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", packageName="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gids="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", protectionLevel=["

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], flags="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2203
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 2306
    :cond_a3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2215
    const-string p0, "Permission groups:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2217
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    move v2, v1

    :goto_bb
    const-string v4, ": packageName="

    if-ge v2, v0, :cond_e7

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionGroupInfo;

    check-cast v5, Ljava/lang/String;

    .line 2218
    iget-object v5, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 2306
    :cond_e7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2222
    const-string p0, "Permission trees:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2224
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p2

    :goto_fe
    if-ge v1, p2, :cond_13a

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    check-cast v0, Ljava/lang/String;

    .line 34
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2228
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2225
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_fe

    .line 2306
    :cond_13a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final enforcePermissionTreeSize(Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V
    .registers 6

    .line 454
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    .line 455
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/PermissionService;->calculatePermissionTreeFootprint(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/permission/Permission;)I

    move-result p0

    .line 457
    invoke-virtual {p2}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x8000

    if-gt p0, p1, :cond_17

    goto :goto_1f

    .line 460
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Permission tree size cap exceeded"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final enforceRestrictedPermission(Ljava/lang/String;)Z
    .registers 6

    .line 1836
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1836
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    const/4 v1, 0x0

    if-nez v0, :cond_41

    .line 1838
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "permission definition for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1843
    :cond_41
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez p1, :cond_4c

    const-string/jumbo p1, "packageManagerLocal"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4c
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p1

    .line 37
    :try_start_50
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1844
    invoke-interface {p1, v3}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_b3

    .line 1843
    invoke-static {p1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v3, :cond_60

    return v1

    .line 133
    :cond_60
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 139
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 145
    :cond_7b
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 1854
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1855
    const-string p1, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1854
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_94

    goto :goto_b1

    .line 1858
    :cond_94
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    invoke-virtual {v0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot modify allowlist of an immutably restricted permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1858
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b1
    :goto_b1
    const/4 p0, 0x1

    return p0

    :catchall_b3
    move-exception p0

    .line 1843
    :try_start_b4
    throw p0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v0

    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final filtered(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .registers 4

    .line 2627
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public final generatePermissionGroupInfo(Landroid/content/pm/PermissionGroupInfo;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 3

    .line 232
    new-instance p0, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    const/16 p1, 0x80

    .line 233
    invoke-static {p2, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    :cond_10
    return-object p0
.end method

.method public final generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;
    .registers 5

    .line 278
    new-instance p0, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 281
    iget p1, p0, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 p1, 0x80

    .line 282
    invoke-static {p2, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    .line 283
    iput-object p1, p0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    :cond_1b
    const/16 p1, 0x1a

    if-ge p3, p1, :cond_28

    .line 286
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_28

    .line 289
    iput p1, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    :cond_28
    return-object p0
.end method

.method public final getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 14

    .line 2165
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2167
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez p0, :cond_12

    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_12
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    :try_start_16
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_13f

    invoke-static {p0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 2168
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result p1

    const/4 v4, 0x0

    move v5, v4

    :goto_27
    if-ge v5, p1, :cond_d1

    .line 45
    invoke-virtual {p0, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/UserState;

    .line 2169
    invoke-virtual {v6}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v7

    .line 44
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v8

    move v9, v4

    :goto_3b
    if-ge v9, v8, :cond_51

    .line 45
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v10

    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 2169
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 2170
    :cond_51
    invoke-virtual {v6}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v7

    .line 44
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v8

    move v9, v4

    :goto_5a
    if-ge v9, v8, :cond_70

    .line 45
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v10

    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 2170
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 2171
    :cond_70
    invoke-virtual {v6}, Lcom/android/server/permission/access/UserState;->getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    .line 47
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v8

    move v9, v4

    :goto_79
    if-ge v9, v8, :cond_a0

    .line 48
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    check-cast v10, Ljava/lang/String;

    .line 2172
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v10, :cond_9d

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    .line 2173
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :cond_9d
    add-int/lit8 v9, v9, 0x1

    goto :goto_79

    .line 2175
    :cond_a0
    invoke-virtual {v6}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result v7

    move v8, v4

    :goto_a9
    if-ge v8, v7, :cond_cd

    .line 45
    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v9, Ljava/lang/String;

    .line 2176
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v9, :cond_ca

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    .line 2177
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :cond_ca
    add-int/lit8 v8, v8, 0x1

    goto :goto_a9

    :cond_cd
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_27

    .line 2181
    :cond_d1
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {p0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3217
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_de
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_118

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    .line 2183
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_f7

    goto :goto_de

    .line 2187
    :cond_f7
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 93
    invoke-virtual {p0, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_106

    goto :goto_10e

    .line 2187
    :cond_106
    new-instance v6, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v6, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {p0, v5, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10e
    check-cast v6, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2188
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    goto :goto_de

    .line 44
    :cond_118
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result p1

    :goto_11c
    if-ge v4, p1, :cond_13e

    .line 45
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 2192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 93
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_133

    goto :goto_13b

    .line 2192
    :cond_133
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v5, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {p0, v3, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13b
    add-int/lit8 v4, v4, 0x1

    goto :goto_11c

    :cond_13e
    return-object p0

    :catchall_13f
    move-exception p1

    .line 2167
    :try_start_140
    throw p1
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_141

    :catchall_141
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .registers 10

    .line 2030
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2031
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_17

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_17
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2031
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    .line 2032
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez p0, :cond_2b

    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_2b
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    .line 2033
    :try_start_2f
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v2

    .line 3170
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 2034
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_3b

    .line 2037
    :cond_54
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_5b

    goto :goto_3b

    .line 2038
    :cond_5b
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    .line 3171
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_63
    :goto_63
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2039
    invoke-virtual {v1, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    if-nez v7, :cond_78

    goto :goto_63

    .line 64
    :cond_78
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v7

    const/16 v8, 0x40

    .line 67
    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 52
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8f

    goto :goto_97

    .line 2042
    :cond_8f
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 55
    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    :goto_97
    check-cast v7, Landroid/util/ArraySet;

    .line 2043
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :catchall_a1
    move-exception v0

    goto :goto_a9

    .line 2047
    :cond_a3
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_a5
    .catchall {:try_start_2f .. :try_end_a5} :catchall_a1

    .line 2032
    invoke-static {p0, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_a9
    :try_start_a9
    throw v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_aa

    :catchall_aa
    move-exception v1

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .registers 11

    .line 186
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    .line 187
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 188
    invoke-virtual {p0, v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 189
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_70

    .line 192
    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_35

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_35
    invoke-direct {v4, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 192
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    .line 194
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v5

    const/4 v6, 0x0

    :goto_48
    if-ge v6, v5, :cond_6c

    .line 48
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 88
    check-cast v8, Landroid/content/pm/PermissionGroupInfo;

    check-cast v7, Ljava/lang/String;

    .line 195
    iget-object v7, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v7, v2}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 196
    invoke-virtual {p0, v8, p1}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionGroupInfo(Landroid/content/pm/PermissionGroupInfo;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    goto :goto_64

    :cond_63
    move-object v7, v1

    :goto_64
    if-eqz v7, :cond_69

    .line 88
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_24 .. :try_end_69} :catchall_22

    :cond_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 194
    :cond_6c
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_70
    :try_start_70
    throw p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .registers 15

    .line 1189
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1190
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAllPermissionStates: Unknown user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1193
    :cond_2d
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    const-string/jumbo v2, "permissionEnforcer"

    if-nez v0, :cond_38

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_38
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getAllPermissionStates"

    invoke-virtual {v0, p3, v3, v4, v5}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v0, :cond_47

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 1202
    :cond_47
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 1203
    const-string v3, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string v6, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    filled-new-array {v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 1199
    invoke-virtual {v0, v5, v2}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_5f

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5f
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2

    :try_start_63
    invoke-interface {v2, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v7
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_f8

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v7, :cond_87

    .line 1209
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAllPermissionStates: Unknown package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1213
    :cond_87
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v6, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_98

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_99

    :cond_98
    move-object v1, p1

    :goto_99
    invoke-direct {v6, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1215
    const-string p1, "default:0"

    invoke-static {p2, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 1216
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p1, v6, v0, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAllPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    goto :goto_b9

    .line 1218
    :cond_af
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 1219
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p1, v6, v0, p2, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getAllPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;I)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    :goto_b9
    if-nez p1, :cond_c0

    .line 1221
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1222
    :cond_c0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v1

    :goto_c9
    if-ge v4, v1, :cond_f7

    .line 48
    invoke-virtual {p1, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    move-object v5, p0

    move-object v10, p2

    move v8, p3

    .line 1224
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 1225
    sget-object p2, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p2, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result p2

    .line 1226
    new-instance p3, Landroid/permission/PermissionManager$PermissionState;

    invoke-direct {p3, p0, p2}, Landroid/permission/PermissionManager$PermissionState;-><init>(ZI)V

    .line 99
    invoke-virtual {v0, v9, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    move-object p0, v5

    move p3, v8

    move-object p2, v10

    goto :goto_c9

    :cond_f7
    return-object v0

    :catchall_f8
    move-exception v0

    move-object p0, v0

    .line 1207
    :try_start_fa
    throw p0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_fb

    :catchall_fb
    move-exception v0

    move-object p1, v0

    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/List;
    .registers 15

    .line 347
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_53

    .line 48
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 88
    move-object v8, v6

    check-cast v8, Lcom/android/server/permission/access/permission/Permission;

    check-cast v5, Ljava/lang/String;

    .line 49
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    if-ne v5, p1, :cond_48

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    .line 351
    invoke-static/range {v7 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    goto :goto_4a

    :cond_48
    move-object v7, p0

    move-object p0, v2

    :goto_4a
    if-eqz p0, :cond_4f

    .line 88
    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    move-object p0, v7

    goto :goto_25

    :cond_53
    return-object v1
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/List;
    .registers 15

    .line 347
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_57

    .line 48
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 88
    move-object v8, v6

    check-cast v8, Lcom/android/server/permission/access/permission/Permission;

    check-cast v5, Ljava/lang/String;

    .line 64
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v5

    .line 341
    invoke-static {v5, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_4c

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    .line 351
    invoke-static/range {v7 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    goto :goto_4e

    :cond_4c
    move-object v7, p0

    move-object p0, v2

    :goto_4e
    if-eqz p0, :cond_53

    .line 88
    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v4, v4, 0x1

    move-object p0, v7

    goto :goto_25

    :cond_57
    return-object v1
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;
    .registers 10

    if-eqz p1, :cond_bb

    const/4 v0, 0x7

    .line 1614
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1615
    const-string/jumbo v0, "userId cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 1617
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_18
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1618
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AllowlistedRestrictedPermission api: Unknown user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1622
    :cond_35
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v0, :cond_40

    const-string/jumbo v0, "permissionEnforcer"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 1626
    :cond_40
    const-string v2, "getAllowlistedRestrictedPermissions"

    const/4 v3, 0x0

    .line 1622
    invoke-virtual {v0, p3, v3, v3, v2}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1631
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v2, :cond_55

    const-string/jumbo v2, "packageManagerLocal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_55
    invoke-virtual {p0, v2, v0, p3}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2

    .line 1632
    :try_start_59
    invoke-interface {v2, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_b4

    .line 1631
    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez p1, :cond_63

    return-object v1

    .line 1634
    :cond_63
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_6a

    return-object v1

    .line 1637
    :cond_6a
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1638
    const-string v5, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1637
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_76

    move v3, v5

    .line 1642
    :cond_76
    invoke-static {p2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_87

    if-eqz v3, :cond_7f

    goto :goto_87

    .line 1645
    :cond_7f
    new-instance p0, Ljava/lang/SecurityException;

    .line 1646
    const-string p1, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1645
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1652
    :cond_87
    :goto_87
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v4, :cond_92

    const-string/jumbo v4, "packageManagerInternal"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_93

    :cond_92
    move-object v1, v4

    :goto_93
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v0

    const/4 v1, 0x6

    .line 1655
    invoke-static {p2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v1

    if-eqz v1, :cond_ab

    if-nez v3, :cond_ab

    if-eqz v0, :cond_a3

    goto :goto_ab

    .line 1661
    :cond_a3
    new-instance p0, Ljava/lang/SecurityException;

    .line 1662
    const-string p1, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1661
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1669
    :cond_ab
    :goto_ab
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 1668
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :catchall_b4
    move-exception p0

    .line 1631
    :try_start_b5
    throw p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p1

    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    .line 1613
    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .registers 4

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;
    .registers 8

    .line 1737
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1737
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    if-nez p0, :cond_1e

    return-object v2

    :cond_1e
    const/4 p1, 0x1

    .line 1741
    invoke-static {p2, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_29

    const/high16 p1, 0x10000

    goto :goto_2a

    :cond_29
    move p1, p3

    :goto_2a
    const/4 v0, 0x4

    .line 1744
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_34

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    :cond_34
    const/4 v0, 0x2

    .line 1747
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_3f

    const p2, 0x8000

    or-int/2addr p1, p2

    .line 1751
    :cond_3f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    :goto_48
    if-ge p3, v0, :cond_6a

    .line 48
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v1, Ljava/lang/String;

    .line 1752
    invoke-static {v3, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_62

    :cond_61
    move-object v1, v2

    :goto_62
    if-eqz v1, :cond_67

    .line 88
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_67
    add-int/lit8 p3, p3, 0x1

    goto :goto_48

    :cond_6a
    return-object p2
.end method

.method public final getAndEnforcePermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .registers 4

    .line 437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 438
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 439
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result p1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    if-ne p1, p2, :cond_17

    return-object p0

    .line 443
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    .line 444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling UID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed to add to or remove from the permission tree"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_a8

    .line 2007
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2009
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_19

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_19
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2009
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    const/4 v2, 0x0

    if-eqz v1, :cond_9f

    .line 64
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v4, 0x40

    .line 67
    invoke-static {v1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_9f

    .line 2014
    :cond_3c
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez p0, :cond_47

    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    :cond_47
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    .line 2015
    :try_start_4b
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    .line 3161
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_57
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 2016
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_70

    goto :goto_57

    .line 2019
    :cond_70
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_77

    goto :goto_57

    .line 2020
    :cond_77
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 2021
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :catchall_89
    move-exception p1

    goto :goto_99

    .line 2024
    :cond_8b
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_8d
    .catchall {:try_start_4b .. :try_end_8d} :catchall_89

    .line 2014
    invoke-static {p0, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 3168
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 2014
    :goto_99
    :try_start_99
    throw p1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 3160
    :cond_9f
    :goto_9f
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 2006
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "permissionName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .registers 3

    .line 2387
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    if-nez p0, :cond_11

    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_11
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2387
    invoke-virtual {v0}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/permission/access/UserState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getDefaultPermissionGrantFingerprint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGidsForUid(I)[I
    .registers 10

    .line 728
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 729
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 730
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    const-string/jumbo v1, "systemConfig"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_14
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v1

    .line 731
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_29

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2a

    :cond_29
    move-object v2, v3

    :goto_2a
    invoke-direct {v4, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 737
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v2, v4, v0, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    if-nez v0, :cond_40

    array-length p0, v1

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const-string p1, "copyOf(...)"

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 739
    :cond_40
    invoke-static {v1}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v2

    const/4 v3, 0x0

    :goto_49
    if-ge v3, v2, :cond_81

    .line 48
    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    check-cast v5, Ljava/lang/String;

    .line 741
    sget-object v7, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v7, v6}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v6

    if-nez v6, :cond_64

    goto :goto_7e

    .line 746
    :cond_64
    iget-object v6, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v6, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    if-nez v5, :cond_73

    goto :goto_7e

    .line 747
    :cond_73
    invoke-virtual {v5, p1}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    move-result-object v5

    .line 748
    array-length v6, v5

    if-nez v6, :cond_7b

    goto :goto_7e

    .line 751
    :cond_7b
    invoke-virtual {v1, v5}, Landroid/util/IntArray;->addAll([I)V

    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 753
    :cond_81
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .registers 13

    if-eqz p1, :cond_9e

    .line 696
    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_14
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v2

    :try_start_18
    invoke-virtual {p0, v2, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_95

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v5, :cond_3c

    .line 701
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getGrantedPermissions: Unknown package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/SetsKt__SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 705
    :cond_3c
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_4d

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4d
    invoke-direct {v4, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 707
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p1, v4, v0, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    if-nez p1, :cond_61

    .line 708
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/SetsKt__SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 710
    :cond_61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v9, v3

    :goto_6c
    if-ge v9, v2, :cond_94

    .line 48
    invoke-virtual {p1, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 716
    const-string v8, "default:0"

    move-object v3, p0

    move v6, p2

    .line 712
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_89

    goto :goto_8a

    :cond_89
    move-object v7, v1

    :goto_8a
    if-eqz v7, :cond_8f

    .line 88
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8f
    add-int/lit8 v9, v9, 0x1

    move-object p0, v3

    move p2, v6

    goto :goto_6c

    :cond_94
    return-object v0

    :catchall_95
    move-exception v0

    move-object p0, v0

    .line 699
    :try_start_97
    throw p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception v0

    move-object p1, v0

    invoke-static {v2, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    .line 695
    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .registers 8

    if-eqz p1, :cond_52

    .line 368
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_14
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 368
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 370
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v1

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v1, :cond_51

    .line 48
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 88
    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    check-cast v4, Ljava/lang/String;

    .line 37
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 371
    invoke-static {v4, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 34
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    goto :goto_49

    :cond_48
    move-object v4, v2

    :goto_49
    if-eqz v4, :cond_4e

    .line 88
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_51
    return-object v0

    .line 366
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 19

    move-object/from16 v0, p0

    .line 2358
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v1}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    .line 2359
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    const/4 v3, 0x0

    if-nez v2, :cond_13

    const-string/jumbo v2, "userManagerService"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_13
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v2

    .line 2360
    iget-object v4, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_28

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_29

    :cond_28
    move-object v3, v4

    :goto_29
    invoke-direct {v5, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2361
    iget-object v3, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    .line 3329
    array-length v4, v2

    const/4 v7, 0x0

    :goto_34
    if-ge v7, v4, :cond_96

    aget v8, v2, v7

    .line 2364
    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move/from16 v10, p1

    invoke-virtual {v9, v5, v10, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    if-nez v9, :cond_45

    :cond_42
    move-object/from16 v16, v2

    goto :goto_8f

    .line 47
    :cond_45
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v11

    const/4 v12, 0x0

    :goto_4a
    if-ge v12, v11, :cond_42

    .line 48
    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    check-cast v13, Ljava/lang/String;

    .line 2367
    invoke-virtual {v3, v13}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/permission/Permission;

    if-nez v15, :cond_67

    move-object/from16 v16, v2

    goto :goto_88

    .line 2369
    :cond_67
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 49
    invoke-virtual {v15}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v15

    const/4 v0, 0x1

    if-ne v15, v0, :cond_75

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    .line 2372
    :goto_76
    sget-object v15, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    move-object/from16 v16, v2

    invoke-virtual {v15, v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v2

    .line 2373
    invoke-virtual {v15, v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v14

    .line 2369
    invoke-direct {v6, v13, v0, v2, v14}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 2375
    invoke-virtual {v1, v6, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    :goto_88
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_4a

    :goto_8f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_34

    :cond_96
    return-object v1
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .registers 9

    .line 2324
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2325
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 2326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v1, :cond_4d

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 80
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    .line 2327
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 2328
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 2329
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v6

    .line 2330
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v7

    .line 2331
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v4

    .line 2327
    invoke-direct {v3, v5, v6, v7, v4}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 80
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_4d
    return-object v0
.end method

.method public final getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .registers 3

    .line 2601
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageState;

    return-object p0
.end method

.method public final getPermissionControllerManager(I)Landroid/permission/PermissionControllerManager;
    .registers 6

    .line 2112
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManagers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2113
    :try_start_3
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManagers:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_12

    .line 54
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2a

    :catchall_10
    move-exception p0

    goto :goto_2e

    .line 2114
    :cond_12
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 2115
    new-instance v2, Landroid/permission/PermissionControllerManager;

    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 56
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p0, v2

    .line 53
    :goto_2a
    check-cast p0, Landroid/permission/PermissionControllerManager;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_10

    .line 2112
    monitor-exit v0

    return-object p0

    :goto_2e
    monitor-exit v0

    throw p0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14

    .line 1145
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    .line 1146
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPermissionFlags: Unknown user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1150
    :cond_2a
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    const-string/jumbo v3, "permissionEnforcer"

    if-nez v0, :cond_35

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_35
    const/4 v4, 0x1

    const-string v5, "getPermissionFlags"

    invoke-virtual {v0, p4, v4, v2, v5}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v0, :cond_43

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 1159
    :cond_43
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 1160
    const-string v4, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string v6, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    filled-new-array {v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 1156
    invoke-virtual {v0, v5, v3}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_5b

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5b
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    :try_start_5f
    invoke-interface {v3, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_cc

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v0, :cond_7f

    .line 1166
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPermissionFlags: Unknown package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1170
    :cond_7f
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_90

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_91

    :cond_90
    move-object v1, p1

    :goto_91
    invoke-direct {v4, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1171
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    if-nez p1, :cond_b9

    .line 1173
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPermissionFlags: Unknown permission "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1178
    :cond_b9
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    move-object v3, p0

    move-object v7, p2

    move-object v8, p3

    move v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1180
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result p0

    return p0

    :catchall_cc
    move-exception v0

    move-object p0, v0

    .line 1164
    :try_start_ce
    throw p0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    move-object p1, v0

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 1683
    const-string v0, "default:0"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1685
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    return p0

    .line 1687
    :cond_f
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1689
    sget-object p5, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not device aware permission,  get the flags for default device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1688
    invoke-static {p5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    return p0

    .line 1695
    :cond_34
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .registers 5

    .line 360
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 360
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    if-nez p0, :cond_25

    .line 361
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    return-object p0

    .line 362
    :cond_25
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 9

    .line 208
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_11
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    .line 210
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 211
    invoke-virtual {p0, v1, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v4
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_35

    if-eqz v4, :cond_23

    .line 212
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 216
    :cond_23
    :try_start_23
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_37

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_6b

    :cond_37
    :goto_37
    invoke-direct {v5, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 216
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PermissionGroupInfo;
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_35

    if-nez p1, :cond_4c

    .line 217
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 215
    :cond_4c
    :try_start_4c
    iput-object p1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 219
    move-object v4, p1

    check-cast v4, Landroid/content/pm/PermissionGroupInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result p1
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_35

    if-nez p1, :cond_5d

    .line 220
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 222
    :cond_5d
    :try_start_5d
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_35

    .line 209
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 224
    iget-object p1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionGroupInfo(Landroid/content/pm/PermissionGroupInfo;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p0

    return-object p0

    .line 209
    :goto_6b
    :try_start_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p1

    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;
    .registers 10

    .line 243
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_11
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    .line 246
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 247
    invoke-virtual {p0, v1, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v4
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_35

    if-eqz v4, :cond_23

    .line 248
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 252
    :cond_23
    :try_start_23
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_37

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_87

    :cond_37
    :goto_37
    invoke-direct {v5, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 252
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/permission/Permission;
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_35

    if-nez p1, :cond_4c

    .line 253
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 251
    :cond_4c
    :try_start_4c
    iput-object p1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 255
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result p1
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_35

    if-nez p1, :cond_5e

    .line 256
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 259
    :cond_5e
    :try_start_5e
    invoke-virtual {p0, v1, p3}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1

    if-eqz p1, :cond_69

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    goto :goto_6a

    :cond_69
    move-object p1, v2

    .line 263
    :goto_6a
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemOrShellUid(I)Z

    move-result p3

    const/16 v3, 0x2710

    if-eqz p3, :cond_73

    goto :goto_79

    :cond_73
    if-eqz p1, :cond_79

    .line 264
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    .line 267
    :cond_79
    :goto_79
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_7b
    .catchall {:try_start_5e .. :try_end_7b} :catchall_35

    .line 245
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 269
    iget-object p1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0

    .line 245
    :goto_87
    :try_start_87
    throw p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception p1

    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 20

    move-object/from16 v4, p2

    move/from16 v1, p3

    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 486
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    if-ne v1, v2, :cond_18

    .line 487
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    :goto_16
    move-object v8, v1

    goto :goto_1f

    .line 489
    :cond_18
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v1

    goto :goto_16

    .line 491
    :goto_1f
    invoke-virtual {v8, v4, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_27

    return v9

    .line 496
    :cond_27
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 497
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 499
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v10, 0x0

    if-nez v1, :cond_3b

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v10

    :cond_3b
    invoke-virtual {p0, v1, v7, v3}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1

    move-object/from16 v5, p1

    .line 500
    :try_start_41
    invoke-interface {v1, v5}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_f9

    .line 499
    invoke-static {v1, v10}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const/4 v11, 0x2

    if-nez v5, :cond_4c

    return v11

    .line 503
    :cond_4c
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_53

    return v11

    .line 504
    :cond_53
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    if-eq v2, v5, :cond_5a

    return v11

    .line 507
    :cond_5a
    iget-object v5, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v12, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    const-string/jumbo v13, "state"

    if-nez v5, :cond_6b

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v10

    :cond_6b
    invoke-direct {v12, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 507
    iget-object v5, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v5, v12}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v5, :cond_f8

    .line 49
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_f8

    .line 511
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    return v11

    .line 516
    :cond_92
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v5, v1

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_a1

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v10

    :cond_a1
    invoke-direct {v1, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object/from16 v5, p4

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const v5, 0x401c0

    .line 519
    invoke-static {v1, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v14

    .line 522
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 523
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    :cond_c2
    if-eqz v14, :cond_f4

    .line 527
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 526
    invoke-virtual {v8, v1, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_cd

    move v9, v12

    .line 532
    :cond_cd
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v4, v1

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_dc

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_dd

    :cond_dc
    move-object v10, v4

    :goto_dd
    invoke-direct {v1, v10}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 536
    const-string v4, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    move-object v0, p0

    move-object/from16 v5, p4

    .line 533
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v9, :cond_f4

    const/16 v1, 0x40

    .line 542
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_f4

    return v12

    :cond_f4
    if-eqz v14, :cond_f7

    return v11

    :cond_f7
    return v12

    :cond_f8
    return v11

    :catchall_f9
    move-exception v0

    move-object v2, v0

    .line 499
    :try_start_fb
    throw v2
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fc

    :catchall_fc
    move-exception v0

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .registers 12

    .line 2311
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2311
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    if-nez p0, :cond_24

    return-object v2

    .line 2313
    :cond_24
    new-instance v3, Lcom/android/server/pm/permission/Permission;

    .line 2314
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 2315
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v5

    .line 2316
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->isReconciled()Z

    move-result v6

    .line 2317
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v7

    .line 2318
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v8

    .line 2319
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getAreGidsPerUser()Z

    move-result v9

    .line 2313
    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;IZI[IZ)V

    return-object v3
.end method

.method public getSplitPermissions()Ljava/util/List;
    .registers 1

    .line 2001
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez p0, :cond_b

    const-string/jumbo p0, "systemConfig"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object p0

    .line 2000
    invoke-static {p0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    const/16 v8, 0x60

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    .line 763
    invoke-static/range {v0 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final initialize()V
    .registers 5

    .line 156
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 157
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 159
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 158
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 162
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 164
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 165
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 166
    new-instance v0, Lcom/android/server/permission/access/util/PermissionEnforcer;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/util/PermissionEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    .line 167
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    const/16 v0, 0xe

    .line 171
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    .line 174
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 177
    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 176
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Landroid/os/HandlerThread;

    .line 178
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-nez v1, :cond_6b

    const-string v1, "handlerThread"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_6b
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    .line 180
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;-><init>(Lcom/android/server/permission/access/permission/PermissionService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    .line 181
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    if-nez p0, :cond_9c

    const-string/jumbo p0, "onPermissionFlagsChangedListener"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9d

    :cond_9c
    move-object v2, p0

    :goto_9d
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;)V

    return-void
.end method

.method public final isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z
    .registers 5

    .line 2614
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;II)Z
    .registers 5

    .line 2621
    invoke-virtual {p0, p1, p4, p3}, Lcom/android/server/permission/access/permission/PermissionService;->filtered(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    :try_start_4
    invoke-interface {p0, p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_12

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return p1

    :catchall_12
    move-exception p1

    :try_start_13
    throw p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception p2

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .line 646
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 649
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 650
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_19

    return p1

    .line 654
    :cond_19
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2b

    .line 657
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    return p1

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13

    .line 1238
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    const-string/jumbo v1, "userManagerInternal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_c
    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_2a

    .line 1239
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPermissionRevokedByPolicy: Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1243
    :cond_2a
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v1, :cond_35

    const-string/jumbo v1, "permissionEnforcer"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_35
    const/4 v4, 0x1

    .line 1247
    const-string v5, "isPermissionRevokedByPolicy"

    .line 1243
    invoke-virtual {v1, p4, v4, v6, v5}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1251
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v1, :cond_46

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {p0, v1, v4, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1

    .line 1252
    :try_start_4e
    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v4
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_8d

    .line 1251
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v4, :cond_58

    return v6

    .line 1255
    :cond_58
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v5, v1

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_6a

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6b

    :cond_6a
    move-object v2, v5

    :goto_6b
    invoke-direct {v1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v5, p3

    move v3, p4

    move-object v2, v4

    move-object v4, p2

    .line 1256
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7a

    return v6

    .line 1261
    :cond_7a
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x80

    .line 1263
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    return v0

    :catchall_8d
    move-exception v0

    move-object v2, v0

    .line 1251
    :try_start_8f
    throw v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v0

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .registers 7

    if-eqz p1, :cond_6b

    .line 1273
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    :try_start_12
    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_64

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1d

    return v0

    .line 1277
    :cond_1d
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_2e

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2e
    move-object v1, v2

    :goto_2f
    invoke-direct {v3, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 1277
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    if-nez p0, :cond_3f

    return v0

    .line 47
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p1

    move p2, v0

    :goto_44
    if-ge p2, p1, :cond_63

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast v1, Ljava/lang/String;

    const/16 v1, 0x1400

    .line 1279
    invoke-static {v2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 p0, 0x1

    return p0

    :cond_60
    add-int/lit8 p2, p2, 0x1

    goto :goto_44

    :cond_63
    return v0

    :catchall_64
    move-exception p0

    .line 1273
    :try_start_65
    throw p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    .line 1268
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isRootOrSystemOrShellUid(I)Z
    .registers 3

    .line 2561
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService;->isShellUid(I)Z

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

.method public final isRootOrSystemUid(I)Z
    .registers 2

    .line 2551
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-eqz p0, :cond_c

    const/16 p1, 0x3e8

    if-eq p0, p1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public final isShellUid(I)Z
    .registers 2

    .line 2558
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 p1, 0x7d0

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 679
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 680
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_14

    return p1

    :cond_14
    if-eqz p4, :cond_36

    .line 685
    iget-object p0, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/Permission;

    if-nez p0, :cond_25

    return p1

    .line 64
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p2, 0x1000

    .line 88
    invoke-static {p0, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_36

    return p1

    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method public final isSystemUidPermissionGranted(ILjava/lang/String;)Z
    .registers 5

    .line 597
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez p0, :cond_b

    const-string/jumbo p0, "systemConfig"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    const/4 p1, 0x0

    if-nez p0, :cond_19

    return p1

    .line 598
    :cond_19
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    return v1

    .line 602
    :cond_21
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_32

    .line 603
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    return v1

    :cond_32
    return p1
.end method

.method public final isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z
    .registers 3

    .line 2608
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez p0, :cond_b

    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_b
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final killUid(ILjava/lang/String;)V
    .registers 6

    .line 2571
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 2573
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2574
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-class v1, Landroid/os/Binder;

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2577
    :try_start_14
    invoke-interface {p0, v0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_1a
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_20

    .line 2581
    :catch_1a
    :goto_1a
    :try_start_1a
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_18

    .line 27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_24
    return-void
.end method

.method public onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 6

    .line 2436
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 2440
    :cond_7
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2445
    :try_start_a
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    goto :goto_1f

    .line 2445
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    check-cast v1, Ljava/util/Collection;

    .line 2446
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 2445
    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2447
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_43

    if-nez p3, :cond_36

    .line 2449
    monitor-exit p2

    return-void

    .line 2451
    :cond_36
    :try_start_36
    sget-object p3, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_43

    .line 2440
    monitor-exit p2

    .line 2452
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;)V

    return-void

    :catchall_43
    move-exception p0

    .line 2440
    monitor-exit p2

    throw p0
.end method

.method public onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .registers 11

    .line 2466
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p2

    if-eqz p2, :cond_8

    goto/16 :goto_7e

    .line 2470
    :cond_8
    sget-object p2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    if-ne p3, p2, :cond_e

    goto/16 :goto_7e

    .line 2482
    :cond_e
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2483
    :try_start_11
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_7f

    if-nez v0, :cond_1f

    .line 2487
    monitor-exit p2

    return-void

    .line 2489
    :cond_1f
    :try_start_1f
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_7f

    .line 2482
    monitor-exit p2

    const/4 p2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ne p4, p2, :cond_37

    .line 2492
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-nez p2, :cond_32

    const-string/jumbo p2, "userManagerService"

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_32
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object p2

    goto :goto_3c

    :cond_37
    const/4 p2, 0x1

    .line 2494
    new-array p2, p2, [I

    aput p4, p2, v1

    .line 3374
    :goto_3c
    array-length p4, p2

    move v2, v1

    :goto_3e
    if-ge v2, p4, :cond_4e

    aget v3, p2, v2

    .line 2497
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageInstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 3376
    :cond_4e
    array-length p4, p2

    :goto_4f
    if-ge v1, p4, :cond_7e

    aget v2, p2, v1

    .line 2503
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v3, :cond_5e

    const-string/jumbo v3, "packageManagerInternal"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_5e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2506
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 2507
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v5

    .line 2504
    invoke-virtual {p0, p1, v4, v5, v2}, Lcom/android/server/permission/access/permission/PermissionService;->addAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V

    .line 2510
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/permission/access/permission/PermissionService;->setRequestedPermissionStates(Lcom/android/server/pm/pkg/PackageState;ILandroid/util/ArrayMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_7e
    :goto_7e
    return-void

    :catchall_7f
    move-exception p0

    .line 2482
    monitor-exit p2

    throw p0
.end method

.method public onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .registers 8

    .line 2522
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_46

    .line 2526
    :cond_7
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 p4, 0x0

    if-nez p3, :cond_13

    const-string/jumbo p3, "packageManagerInternal"

    invoke-static {p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p4

    :cond_13
    invoke-virtual {p3}, Landroid/content/pm/PackageManagerInternal;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p3, :cond_47

    const/4 p3, -0x1

    const/4 p5, 0x0

    if-ne p6, p3, :cond_34

    .line 2530
    iget-object p3, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-nez p3, :cond_2e

    const-string/jumbo p3, "userManagerService"

    invoke-static {p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2e
    move-object p4, p3

    :goto_2f
    invoke-virtual {p4}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object p3

    goto :goto_39

    :cond_34
    const/4 p3, 0x1

    .line 2532
    new-array p3, p3, [I

    aput p6, p3, p5

    .line 3378
    :goto_39
    array-length p4, p3

    :goto_3a
    if-ge p5, p4, :cond_46

    aget p6, p3, p5

    .line 2534
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v0, p1, p2, p6}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageUninstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;II)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_3a

    :cond_46
    :goto_46
    return-void

    .line 2536
    :cond_47
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .registers 6

    .line 2420
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2423
    :try_start_3
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_14

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_2d

    .line 2424
    :cond_14
    :goto_14
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .line 72
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2425
    sget-object v2, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_12

    .line 2420
    monitor-exit v0

    .line 2541
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 2427
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onStorageVolumeMounted$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_28

    .line 2545
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw p0

    .line 2420
    :goto_2d
    monitor-exit v0

    throw p0
.end method

.method public onSystemReady()V
    .registers 7

    .line 2396
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessCheckingService;->onSystemReady$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()V

    .line 2399
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2398
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_5a

    .line 2400
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2401
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_1e
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_2e

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_58

    .line 313
    :cond_2e
    :goto_2e
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    .line 314
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v3, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 2402
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimDevicePermissionStates(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v1, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_56
    .catchall {:try_start_1e .. :try_end_56} :catchall_2c

    .line 311
    monitor-exit v2

    goto :goto_5a

    :goto_58
    monitor-exit v2

    throw p0

    .line 2405
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_66

    new-instance v1, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;

    invoke-direct {v1, p0}, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;-><init>(Lcom/android/server/permission/access/permission/PermissionService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->registerPersistentDeviceIdRemovedListener(Ljava/util/function/Consumer;)V

    :cond_66
    return-void
.end method

.method public onUserCreated(I)V
    .registers 2

    .line 2541
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 2411
    :try_start_3
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 2545
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void

    :catchall_e
    move-exception p0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 2415
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V

    return-void
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 16

    .line 298
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v6, 0x0

    if-nez v1, :cond_c

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_c
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v7

    .line 299
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 300
    invoke-virtual {p0, v7, v8}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v1
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_30

    if-eqz v1, :cond_1e

    .line 301
    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v6

    .line 305
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_34

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_34

    :catchall_30
    move-exception v0

    move-object v1, v0

    goto/16 :goto_a6

    :cond_34
    :goto_34
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    if-eqz p1, :cond_57

    .line 308
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionGroupInfo;
    :try_end_45
    .catchall {:try_start_1e .. :try_end_45} :catchall_30

    if-nez v1, :cond_4b

    .line 309
    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v6

    .line 312
    :cond_4b
    :try_start_4b
    iget-object v1, v1, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7, v1, v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v1
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_30

    if-nez v1, :cond_57

    .line 314
    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v6

    .line 318
    :cond_57
    :try_start_57
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    .line 321
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v11

    const/4 v1, 0x0

    move v12, v1

    :goto_68
    if-ge v12, v11, :cond_a2

    .line 48
    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 88
    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    check-cast v1, Ljava/lang/String;

    .line 40
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 323
    invoke-static {v1, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 37
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 324
    invoke-virtual {p0, v7, v1, v8}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_99

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v2

    move v2, p2

    .line 326
    invoke-static/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    goto :goto_9a

    :cond_99
    move-object v1, v6

    :goto_9a
    if-eqz v1, :cond_9f

    .line 88
    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_9f
    .catchall {:try_start_57 .. :try_end_9f} :catchall_30

    :cond_9f
    add-int/lit8 v12, v12, 0x1

    goto :goto_68

    .line 321
    :cond_a2
    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v10

    :goto_a6
    :try_start_a6
    throw v1
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception v0

    invoke-static {v7, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readLegacyPermissionStateTEMP()V
    .registers 1

    .line 0
    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 2

    .line 2337
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessCheckingService;->initialize()V

    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 13

    if-eqz p2, :cond_22

    .line 1814
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1819
    :cond_a
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_11

    return v1

    .line 1822
    :cond_11
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    .line 1823
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    :cond_21
    return v1

    .line 1813
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "permissionName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 5

    .line 1991
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1992
    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    .line 1993
    const-string/jumbo v2, "removeOnPermissionsChangeListener"

    .line 1991
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    if-nez p0, :cond_15

    const-string/jumbo p0, "onPermissionsChangeListeners"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->removeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 9

    .line 417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_10
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    :try_start_14
    invoke-virtual {p0, v1, v0}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_9a

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v0, :cond_92

    .line 421
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 312
    :try_start_24
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_33

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_34

    :catchall_31
    move-exception p0

    goto :goto_90

    :cond_33
    move-object v2, v3

    .line 313
    :goto_34
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v2, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 422
    # invokes: Lcom/android/server/permission/access/permission/PermissionService;->getAndEnforcePermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    invoke-static {p0, v4, p1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    .line 423
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    if-nez v2, :cond_51

    goto :goto_5f

    .line 43
    :cond_51
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_79

    .line 432
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object p0

    invoke-virtual {p0, v4, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->removePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)V

    .line 315
    :goto_5f
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_77
    .catchall {:try_start_24 .. :try_end_77} :catchall_31

    .line 311
    monitor-exit v1

    return-void

    .line 427
    :cond_79
    :try_start_79
    new-instance p0, Ljava/lang/SecurityException;

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_90
    .catchall {:try_start_79 .. :try_end_90} :catchall_31

    .line 311
    :goto_90
    monitor-exit v1

    throw p0

    .line 419
    :cond_92
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_9a
    move-exception p0

    .line 418
    :try_start_9b
    throw p0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception p1

    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V
    .registers 10

    .line 1959
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 312
    :try_start_7
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_50

    .line 313
    :cond_17
    :goto_17
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v2, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 1960
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v2

    .line 1961
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;IZ)V

    .line 1963
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_15

    .line 311
    monitor-exit v1

    return-void

    :goto_50
    monitor-exit v1

    throw p0
.end method

.method public resetRuntimePermissionsForUser(I)V
    .registers 13

    .line 1968
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    .line 1969
    :try_start_10
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_8a

    .line 312
    :try_start_17
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_8c

    .line 313
    :cond_27
    :goto_27
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    .line 314
    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v6, v4, v5}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 1970
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v4

    .line 3146
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 1971
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v8

    if-eqz v8, :cond_55

    goto :goto_3c

    .line 1974
    :cond_55
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v6, v9, p1, v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;IZ)V

    .line 1975
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v7, p1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    goto :goto_3c

    .line 315
    :cond_6d
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v2, v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_85
    .catchall {:try_start_17 .. :try_end_85} :catchall_25

    .line 311
    :try_start_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_8a

    .line 1968
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_8a
    move-exception p0

    goto :goto_8e

    .line 311
    :goto_8c
    :try_start_8c
    monitor-exit v3

    throw p0
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_8a

    .line 1968
    :goto_8e
    :try_start_8e
    throw p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .registers 7

    if-eqz p1, :cond_31

    .line 2090
    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 2092
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 2093
    :try_start_b
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_2e

    if-eqz v1, :cond_16

    .line 2094
    monitor-exit v0

    return-void

    .line 2096
    :cond_16
    :try_start_16
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_2e

    .line 2092
    monitor-exit v0

    .line 2097
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionControllerManager(I)Landroid/permission/PermissionControllerManager;

    move-result-object v0

    .line 2099
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2100
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2097
    new-instance v3, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;

    invoke-direct {v3, p0, p2}, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :catchall_2e
    move-exception p0

    .line 2092
    monitor-exit v0

    throw p0

    .line 2089
    :cond_31
    const-string/jumbo p0, "packageName"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restoreRuntimePermissions([BI)V
    .registers 5

    if-eqz p1, :cond_22

    .line 2077
    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 2079
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 2080
    :try_start_b
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 65
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2081
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1f

    .line 2079
    monitor-exit v0

    .line 2082
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionControllerManager(I)Landroid/permission/PermissionControllerManager;

    move-result-object p0

    .line 2084
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 2082
    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    return-void

    :catchall_1f
    move-exception p0

    .line 2079
    monitor-exit v0

    throw p0

    .line 2076
    :cond_22
    const-string p0, "backup"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .registers 13

    const/16 v8, 0x40

    const/4 v9, 0x0

    .line 787
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    move-object v7, p5

    .line 773
    invoke-static/range {v0 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z
    .registers 14

    .line 1873
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_a

    move v1, v6

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1876
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1877
    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1876
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    move v1, v6

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 1880
    :goto_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1882
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v5, 0x0

    if-nez v4, :cond_2b

    const-string/jumbo v4, "packageManagerLocal"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_2b
    invoke-virtual {p0, v4, v3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v4

    .line 1883
    :try_start_2f
    invoke-interface {v4}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_87

    if-nez v7, :cond_3f

    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v2

    .line 1882
    :cond_3f
    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move v4, v1

    .line 1885
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_4a

    return v2

    .line 1888
    :cond_4a
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v2, :cond_55

    const-string/jumbo v2, "packageManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_56

    :cond_55
    move-object v5, v2

    :goto_56
    invoke-virtual {v5, v1, v3}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v2

    const/4 v3, 0x4

    .line 1890
    invoke-static {p3, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_7b

    if-nez v4, :cond_6e

    if-eqz v2, :cond_66

    goto :goto_6e

    .line 1892
    :cond_66
    new-instance v0, Ljava/lang/SecurityException;

    .line 1893
    const-string v1, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1892
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    :goto_6e
    if-eqz p5, :cond_7b

    if-eqz v4, :cond_73

    goto :goto_7b

    .line 1898
    :cond_73
    new-instance v0, Ljava/lang/SecurityException;

    .line 1899
    const-string v1, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1898
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1907
    :cond_7b
    :goto_7b
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1905
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    return v6

    :catchall_87
    move-exception v0

    move-object v1, v0

    .line 1882
    :try_start_89
    throw v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v0

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V
    .registers 22

    move/from16 v0, p4

    const/4 v1, 0x1

    .line 1928
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/high16 v1, 0x10000

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    const/4 v3, 0x4

    .line 1931
    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_18

    const/high16 v4, 0x20000

    or-int/2addr v1, v4

    :cond_18
    const/4 v4, 0x2

    .line 1934
    invoke-static {v0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x8000

    or-int/2addr v1, v0

    :cond_23
    move-object/from16 v0, p0

    move v9, v1

    .line 1938
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 312
    :try_start_2d
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_3e

    :catchall_3b
    move-exception v0

    goto/16 :goto_c1

    .line 313
    :cond_3e
    :goto_3e
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v12

    .line 314
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v4, v12}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 1939
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v4

    .line 1940
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 1941
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    .line 3116
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v6, v2

    :goto_58
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v14, v6, 0x1

    if-gez v6, :cond_69

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_69
    check-cast v7, Ljava/lang/String;

    .line 1942
    invoke-virtual {v0, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v8, :cond_91

    .line 133
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v6, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 139
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v10, 0x8

    invoke-static {v6, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v6

    if-eqz v6, :cond_91

    :cond_8e
    move-object/from16 v15, p3

    goto :goto_94

    :cond_91
    move-object/from16 v15, p3

    goto :goto_a5

    .line 1947
    :goto_94
    invoke-interface {v15, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    move v10, v9

    :goto_9b
    move/from16 v6, p2

    move/from16 v7, p5

    goto :goto_a2

    :cond_a0
    move v10, v2

    goto :goto_9b

    .line 1948
    :goto_a2
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    :goto_a5
    move v6, v14

    goto :goto_58

    .line 315
    :cond_a7
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v1, v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v12}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_bf
    .catchall {:try_start_2d .. :try_end_bf} :catchall_3b

    .line 311
    monitor-exit v11

    return-void

    :goto_c1
    monitor-exit v11

    throw v0
.end method

.method public final setAppOpPermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V
    .registers 13

    .line 1133
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    const-string/jumbo v0, "uid"

    const-string v1, "app-op"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.server.permission.access.appop.AppIdAppOpPolicy"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 1134
    invoke-static {p4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p5, :cond_20

    const/4 p0, 0x0

    :goto_1e
    move v6, p0

    goto :goto_22

    :cond_20
    const/4 p0, 0x2

    goto :goto_1e

    .line 1136
    :goto_22
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void
.end method

.method public setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V
    .registers 9

    .line 2390
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 312
    :try_start_7
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_4b

    .line 313
    :cond_18
    :goto_18
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 2391
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, p2, v4, v5, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/android/server/permission/access/MutableUserState;->setDefaultPermissionGrantFingerprintPublic(Ljava/lang/String;)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_16

    .line 311
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0

    throw p0
.end method

.method public final setPermissionFlagsWithPolicy(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;I)Z
    .registers 14

    .line 1708
    const-string v0, "default:0"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1710
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move p5, p6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-result p0

    return p0

    .line 1712
    :cond_10
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1714
    sget-object p5, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not device aware permission,  set the flags for default device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1713
    invoke-static {p5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 1718
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object p5, p4

    move p4, p3

    move p3, p2

    move-object p2, v1

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-result p0

    return p0

    .line 1721
    :cond_3a
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v3, p5

    move v6, p6

    .line 1722
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final setRequestedPermissionStates(Lcom/android/server/pm/pkg/PackageState;ILandroid/util/ArrayMap;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v13, p3

    .line 915
    iget-object v14, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 312
    :try_start_b
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_1c

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1c

    :catchall_19
    move-exception v0

    goto/16 :goto_136

    .line 313
    :cond_1c
    :goto_1c
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v11

    .line 314
    new-instance v2, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v2, v1, v11}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 40
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_2d
    if-ge v6, v12, :cond_11b

    .line 41
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v1, 0x1

    if-eq v3, v1, :cond_6f

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6f

    .line 922
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object v1

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRequestedPermissionStates: Unknown permission state "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for permission "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 921
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    move-object v1, v2

    :goto_68
    move/from16 v17, v6

    move-object v13, v11

    move/from16 v18, v12

    goto/16 :goto_10f

    .line 929
    :cond_6f
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    goto :goto_67

    .line 933
    :cond_81
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    if-nez v5, :cond_92

    goto :goto_67

    .line 64
    :cond_92
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v7

    const/16 v8, 0x20

    .line 79
    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-nez v7, :cond_ac

    .line 49
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    if-ne v7, v1, :cond_ae

    :cond_ac
    move-object v0, v2

    goto :goto_d8

    .line 64
    :cond_ae
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v5

    const/16 v7, 0x40

    .line 67
    invoke-static {v5, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 969
    sget-object v5, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 968
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    if-ne v3, v1, :cond_cf

    move v5, v1

    :goto_c9
    move/from16 v3, p2

    move-object v1, v2

    move-object/from16 v2, p1

    goto :goto_d2

    :cond_cf
    move/from16 v5, v16

    goto :goto_c9

    .line 970
    :goto_d2
    # invokes: Lcom/android/server/permission/access/permission/PermissionService;->setAppOpPermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->access$setAppOpPermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V

    move-object v0, v1

    :cond_d6
    move-object v1, v0

    goto :goto_68

    :goto_d8
    if-ne v3, v1, :cond_d6

    .line 944
    const-string v5, "default:0"

    .line 949
    const-string/jumbo v10, "setRequestedPermissionStates"

    move v1, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, p0

    .line 940
    # invokes: Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    invoke-static/range {v0 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 952
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 955
    const-string v5, "default:0"

    move-object v0, v11

    .line 962
    const-string/jumbo v11, "setRequestedPermissionStates"

    move v3, v12

    .line 963
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v6, 0x48

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v13, v0

    move/from16 v18, v3

    move-object/from16 v0, p0

    move/from16 v3, p2

    .line 951
    # invokes: Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    :goto_10f
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v0, p0

    move-object v2, v1

    move-object v11, v13

    move/from16 v12, v18

    move-object/from16 v13, p3

    goto/16 :goto_2d

    :cond_11b
    move-object v13, v11

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v14, v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v13}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_134
    .catchall {:try_start_b .. :try_end_134} :catchall_19

    .line 311
    monitor-exit v15

    return-void

    :goto_136
    monitor-exit v15

    throw v0
.end method

.method public final setRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .registers 26

    move-object/from16 v4, p4

    move/from16 v7, p6

    move-object/from16 v6, p10

    .line 995
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/permission/access/permission/Permission;

    if-nez v8, :cond_32

    if-nez p9, :cond_1b

    goto/16 :goto_1e9

    .line 998
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1003
    :cond_32
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1004
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 64
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v2, 0x20

    .line 79
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const/4 v11, 0x1

    .line 1006
    const-string v12, " to package "

    const-string v13, "Permission "

    if-nez v0, :cond_f9

    .line 64
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v2, 0x4000000

    .line 115
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_82

    if-nez p7, :cond_f9

    if-nez p9, :cond_68

    goto/16 :goto_1e9

    .line 1010
    :cond_68
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is managed by role"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_82
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    if-ne v0, v11, :cond_d3

    .line 1016
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_96

    goto/16 :goto_1e9

    :cond_96
    if-eqz v7, :cond_f9

    .line 1023
    invoke-interface/range {p2 .. p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 64
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v2, 0x1000

    .line 88
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-nez v0, :cond_f9

    if-nez p9, :cond_b6

    goto/16 :goto_1e9

    .line 1027
    :cond_b6
    new-instance p0, Ljava/lang/SecurityException;

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot grant non-instant permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d3
    if-nez p9, :cond_d7

    goto/16 :goto_1e9

    .line 1037
    :cond_d7
    new-instance p0, Ljava/lang/SecurityException;

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requested by package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a changeable permission type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1046
    :cond_f9
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    move-object v0, p0

    move/from16 v3, p3

    move-object/from16 v5, p5

    .line 1047
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1049
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    if-nez v14, :cond_131

    if-eqz p9, :cond_1e9

    .line 1052
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isn\'t requested by package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_131
    const/16 v0, 0x100

    .line 1059
    invoke-static {v14, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const-string v1, " for package "

    if-eqz v0, :cond_15d

    if-eqz p9, :cond_1e9

    .line 1062
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Cannot change system fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15d
    const/16 v0, 0x80

    .line 1070
    invoke-static {v14, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_189

    if-nez p8, :cond_189

    if-eqz p9, :cond_1e9

    .line 1073
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Cannot change policy fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_189
    if-eqz v7, :cond_1b5

    const/high16 v0, 0x40000

    .line 1081
    invoke-static {v14, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_1b5

    if-eqz p9, :cond_1e9

    .line 1084
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Cannot grant hard-restricted non-exempt permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b5
    if-eqz v7, :cond_1e1

    const/high16 v0, 0x80000

    .line 1092
    invoke-static {v14, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_1e1

    if-eqz p9, :cond_1e9

    .line 1095
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Cannot grant soft-restricted non-exempt permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1094
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1103
    :cond_1e1
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v0, v14, v7}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateRuntimePermissionGranted(IZ)I

    move-result v6

    if-ne v14, v6, :cond_1ea

    :cond_1e9
    :goto_1e9
    return-void

    :cond_1ea
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p5

    .line 1108
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;I)Z

    .line 49
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    if-ne v1, v11, :cond_220

    if-eqz v7, :cond_203

    const/16 v1, 0x4db

    goto :goto_205

    :cond_203
    const/16 v1, 0x4dd

    .line 1118
    :goto_205
    new-instance v2, Landroid/metrics/LogMaker;

    invoke-direct {v2, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1119
    invoke-virtual {v2, v10}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v1, 0x4d9

    .line 1120
    invoke-virtual {v2, v1, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1122
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez p0, :cond_21d

    const-string/jumbo p0, "metricsLogger"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_21d
    invoke-virtual {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_220
    return-void
.end method

.method public final setRuntimePermissionGranted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 21

    move-object/from16 v0, p7

    if-eqz p5, :cond_8

    .line 810
    const-string v1, "grantRuntimePermission"

    :goto_6
    move-object v10, v1

    goto :goto_c

    :cond_8
    const-string/jumbo v1, "revokeRuntimePermission"

    goto :goto_6

    .line 811
    :goto_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 835
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v4, 0x0

    if-nez v2, :cond_1c

    const-string/jumbo v2, "userManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1c
    invoke-virtual {v2, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 836
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Unknown user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 840
    :cond_3c
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v2, :cond_47

    const-string/jumbo v2, "permissionEnforcer"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_47
    const/4 v5, 0x1

    invoke-virtual {v2, p2, v5, v5, v10}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    if-eqz p5, :cond_50

    .line 848
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    goto :goto_52

    .line 850
    :cond_50
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 852
    :goto_52
    iget-object v6, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v6, v2, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    new-instance v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 856
    iget-object v6, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v6, :cond_67

    const-string/jumbo v6, "packageManagerInternal"

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_67
    const/4 v7, 0x7

    const/4 v8, 0x0

    .line 857
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v6

    .line 861
    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 863
    iget-object v7, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v7, :cond_7e

    const-string/jumbo v7, "packageManagerLocal"

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v4

    :cond_7e
    invoke-interface {v7}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v7

    .line 865
    :try_start_82
    invoke-virtual {p0, v7, v1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->filtered(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v9
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_147

    :try_start_86
    invoke-interface {v9, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v11
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_14a

    :try_start_8a
    invoke-static {v9, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 864
    iput-object v11, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 867
    invoke-virtual {p0, v7, v6}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v6

    .line 868
    sget-object v9, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_147

    .line 863
    invoke-static {v7, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 869
    iget-object v7, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v7, :cond_a3

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    goto :goto_a4

    :cond_a3
    move-object v7, v4

    :goto_a4
    if-nez v7, :cond_c0

    .line 874
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Unknown package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 879
    :cond_c0
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result p1

    if-nez p1, :cond_d6

    .line 880
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    if-ne p1, v1, :cond_d4

    goto :goto_d6

    :cond_d4
    move v7, v8

    goto :goto_d7

    :cond_d6
    :goto_d6
    move v7, v5

    .line 882
    :goto_d7
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 883
    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 882
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e2

    move v8, v5

    .line 886
    :cond_e2
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 312
    :try_start_e9
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_fa

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_fa

    :catchall_f7
    move-exception v0

    move-object p0, v0

    goto :goto_145

    .line 313
    :cond_fa
    :goto_fa
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v12

    .line 314
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v1, v12}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 887
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getOnPermissionFlagsChangedListener$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    move-result-object v1

    if-nez v1, :cond_110

    const-string/jumbo v1, "onPermissionFlagsChangedListener"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_111

    :cond_110
    move-object v4, v1

    :goto_111
    if-eqz p6, :cond_116

    .line 889
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->skipKillRuntimePermissionRevokedUids(Lcom/android/server/permission/access/MutateStateScope;)V

    :cond_116
    if-eqz v0, :cond_11b

    .line 892
    invoke-virtual {v4, v5, v0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->addKillRuntimePermissionRevokedUidsReason(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    .line 897
    :cond_11b
    iget-object v0, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    const/4 v9, 0x1

    move-object v0, p0

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move-object v1, v5

    move-object/from16 v5, p4

    .line 896
    # invokes: Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    invoke-static/range {v0 .. v10}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p1, v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v12}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    :try_end_143
    .catchall {:try_start_e9 .. :try_end_143} :catchall_f7

    .line 311
    monitor-exit v11

    return-void

    :goto_145
    monitor-exit v11

    throw p0

    :catchall_147
    move-exception v0

    move-object p0, v0

    goto :goto_153

    :catchall_14a
    move-exception v0

    move-object p0, v0

    .line 865
    :try_start_14c
    throw p0
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_14d

    :catchall_14d
    move-exception v0

    move-object p1, v0

    :try_start_14f
    invoke-static {v9, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_153
    .catchall {:try_start_14f .. :try_end_153} :catchall_147

    .line 863
    :goto_153
    :try_start_153
    throw p0
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_154

    :catchall_154
    move-exception v0

    move-object p1, v0

    invoke-static {v7, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16

    move v3, p4

    .line 1288
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v6, 0x0

    if-nez v1, :cond_d

    const-string/jumbo v1, "userManagerInternal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_d
    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_2c

    .line 1289
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldShowRequestPermissionRationale: Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1293
    :cond_2c
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v1, :cond_37

    const-string/jumbo v1, "permissionEnforcer"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    .line 1297
    :cond_37
    const-string/jumbo v2, "shouldShowRequestPermissionRationale"

    const/4 v8, 0x1

    .line 1293
    invoke-virtual {v1, p4, v8, v7, v2}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1300
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1302
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v2, :cond_4d

    const-string/jumbo v2, "packageManagerLocal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_4d
    invoke-virtual {p0, v2, v1, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2

    .line 1303
    :try_start_51
    invoke-interface {v2, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v4
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_d7

    .line 1302
    invoke-static {v2, v6}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v4, :cond_5b

    return v7

    .line 1305
    :cond_5b
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    .line 1306
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v1, v9, :cond_66

    return v7

    .line 1311
    :cond_66
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v2, v1

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_78
    invoke-direct {v1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v5, p3

    move-object v2, v4

    move-object v4, p2

    .line 1312
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    return v7

    :cond_86
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v3, p4

    move v2, v9

    .line 1316
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const v2, 0x401c0

    .line 1318
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_99

    return v7

    .line 1322
    :cond_99
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p2, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    const-class v2, Landroid/os/Binder;

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1326
    :try_start_a7
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    if-nez v0, :cond_b6

    const-string/jumbo v0, "platformCompat"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b7

    :catchall_b2
    move-exception v0

    goto :goto_cc

    :catch_b4
    move-exception v0

    goto :goto_be

    :cond_b6
    move-object v6, v0

    .line 1327
    :goto_b7
    sget-wide v9, Lcom/android/server/permission/access/permission/PermissionService;->BACKGROUND_RATIONALE_CHANGE_ID:J

    .line 1326
    invoke-interface {v6, v9, v10, p1, p4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v7
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_bd} :catch_b4
    .catchall {:try_start_a7 .. :try_end_bd} :catchall_b2

    goto :goto_c6

    .line 1333
    :goto_be
    :try_start_be
    sget-object v2, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1334
    const-string/jumbo v3, "shouldShowRequestPermissionRationale: Unable to check if compatibility change is enabled"

    .line 1332
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c6
    .catchall {:try_start_be .. :try_end_c6} :catchall_b2

    .line 27
    :goto_c6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_d0

    return v8

    :goto_cc
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_d0
    const/16 v0, 0x20

    .line 1346
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    return v0

    :catchall_d7
    move-exception v0

    move-object v1, v0

    .line 1302
    :try_start_d9
    throw v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    :catchall_da
    move-exception v0

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;
    .registers 9

    .line 2352
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_2e

    .line 48
    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 80
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    .line 2354
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v4

    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    invoke-direct {v3, v5, v4, v1, v6}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 80
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2e
    return-object p0
.end method

.method public final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 20

    if-nez p8, :cond_e

    const/16 v1, 0x7830

    .line 1582
    invoke-static {p6, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    .line 1583
    invoke-static {p7, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    move v3, v1

    goto :goto_10

    :cond_e
    move v2, p6

    move v3, p7

    .line 1586
    :goto_10
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    if-nez v4, :cond_38

    if-nez p9, :cond_21

    return-void

    .line 1589
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1594
    :cond_38
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez p10, :cond_66

    if-nez v5, :cond_66

    .line 1597
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t requested by package "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1596
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1604
    :cond_66
    sget-object v6, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v6, v4, v5, v2, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    move-result v2

    move-object p6, p0

    move-object p7, p1

    move p8, p2

    move/from16 p9, p3

    move-object/from16 p10, p4

    move-object/from16 p11, p5

    move/from16 p12, v2

    .line 1605
    invoke-virtual/range {p6 .. p12}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v4, p2

    move/from16 v3, p7

    .line 1358
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1387
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v5, 0x0

    if-nez v2, :cond_18

    const-string/jumbo v2, "userManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_18
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1388
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermissionFlags: Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1392
    :cond_36
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v2, :cond_41

    const-string/jumbo v2, "permissionEnforcer"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    .line 1396
    :cond_41
    const-string/jumbo v6, "updatePermissionFlags"

    const/4 v7, 0x1

    .line 1392
    invoke-virtual {v2, v3, v7, v7, v6}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1398
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v2, :cond_53

    const-string/jumbo v2, "permissionEnforcer"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    .line 1399
    :cond_53
    const-string/jumbo v6, "updatePermissionFlags"

    .line 1400
    const-string v8, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 1401
    const-string v9, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 1398
    invoke-virtual {v2, v6, v8}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1408
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v2

    if-nez v2, :cond_98

    const/4 v2, 0x4

    move/from16 v6, p3

    .line 1409
    invoke-static {v6, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_9a

    if-eqz p5, :cond_7c

    .line 1411
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1412
    const-string v8, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 1413
    const-string v9, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    .line 1411
    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    .line 1417
    :cond_7c
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v2, :cond_87

    const-string/jumbo v2, "packageManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_87
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v2

    const/16 v8, 0x1d

    if-ge v2, v8, :cond_90

    goto :goto_9a

    .line 1419
    :cond_90
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs to be checked for packages targeting 29 or later when changing policy flags"

    .line 1418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_98
    move/from16 v6, p3

    .line 1432
    :cond_9a
    :goto_9a
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v2, :cond_a5

    const-string/jumbo v2, "packageManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_a5
    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_b0

    .line 1433
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    goto :goto_b1

    :cond_b0
    move-object v8, v5

    :goto_b1
    if-eqz v8, :cond_157

    .line 1439
    iget-object v9, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v9, :cond_be

    const-string/jumbo v9, "packageManagerInternal"

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v5

    :cond_be
    const/4 v10, 0x0

    invoke-virtual {v9, v12, v1, v3, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v9

    if-eqz v9, :cond_c7

    goto/16 :goto_157

    .line 1448
    :cond_c7
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v1

    .line 1451
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d7

    :goto_d5
    move v10, v7

    goto :goto_10b

    .line 1457
    :cond_d7
    iget-object v8, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v8, :cond_e2

    const-string/jumbo v8, "packageManagerInternal"

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_e2
    invoke-virtual {v8, v12, v3}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 3061
    array-length v9, v8

    move v11, v10

    :goto_e8
    if-ge v11, v9, :cond_10b

    aget-object v13, v8, v11

    .line 1459
    iget-object v14, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v14, :cond_f7

    const-string/jumbo v14, "packageManagerInternal"

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v14, v5

    :cond_f7
    invoke-virtual {v14, v13}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-eqz v13, :cond_108

    .line 1461
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_108

    goto :goto_d5

    :cond_108
    add-int/lit8 v11, v11, 0x1

    goto :goto_e8

    .line 1465
    :cond_10b
    :goto_10b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 1466
    iget-object v13, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 312
    :try_start_116
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v7

    if-nez v7, :cond_125

    const-string/jumbo v7, "state"

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_126

    :catchall_123
    move-exception v0

    goto :goto_155

    :cond_125
    move-object v5, v7

    .line 313
    :goto_126
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v15

    move v8, v1

    .line 314
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v5, v15}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 1477
    const-string/jumbo v11, "updatePermissionFlags"

    const/4 v9, 0x1

    move/from16 v7, p4

    move-object/from16 v5, p6

    .line 1467
    # invokes: Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v13, v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v15}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_153
    .catchall {:try_start_116 .. :try_end_153} :catchall_123

    .line 311
    monitor-exit v14

    return-void

    :goto_155
    monitor-exit v14

    throw v0

    .line 1441
    :cond_157
    :goto_157
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermissionFlags: Unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v3, p3

    .line 1484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1508
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v4, 0x0

    if-nez v2, :cond_14

    const-string/jumbo v2, "userManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_14
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1509
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermissionFlagsForAllApps: Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1513
    :cond_32
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v2, :cond_3d

    const-string/jumbo v2, "permissionEnforcer"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    .line 1517
    :cond_3d
    const-string/jumbo v5, "updatePermissionFlagsForAllApps"

    const/4 v6, 0x1

    .line 1513
    invoke-virtual {v2, v3, v6, v6, v5}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1519
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez v2, :cond_4f

    const-string/jumbo v2, "permissionEnforcer"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    .line 1520
    :cond_4f
    const-string/jumbo v5, "updatePermissionFlagsForAllApps"

    .line 1521
    const-string v6, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 1522
    const-string v7, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 1519
    invoke-virtual {v2, v5, v6}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1527
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v8

    .line 1529
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v1, :cond_6c

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_6c
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    :try_start_70
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v2
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_116

    invoke-static {v1, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1530
    iget-object v13, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 312
    :try_start_7e
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_8e

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8f

    :catchall_8b
    move-exception v0

    goto/16 :goto_114

    :cond_8e
    move-object v4, v1

    .line 313
    :goto_8f
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v15

    .line 314
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v4, v15}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 3077
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_a0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fa

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/server/pm/pkg/PackageState;

    .line 1532
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v2

    if-eqz v2, :cond_c2

    goto :goto_f5

    .line 1535
    :cond_c2
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_c9

    goto :goto_f5

    .line 1536
    :cond_c9
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 3078
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_d1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 1538
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 1541
    const-string v5, "default:0"

    .line 1547
    const-string/jumbo v11, "updatePermissionFlagsForAllApps"

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v6, p1

    move/from16 v7, p2

    .line 1537
    # invokes: Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v12}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v3, p3

    goto :goto_d1

    :cond_f5
    :goto_f5
    move-object/from16 v0, p0

    move/from16 v3, p3

    goto :goto_a0

    .line 315
    :cond_fa
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v13, v15}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v15}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_112
    .catchall {:try_start_7e .. :try_end_112} :catchall_8b

    .line 311
    monitor-exit v14

    return-void

    :goto_114
    monitor-exit v14

    throw v0

    :catchall_116
    move-exception v0

    move-object v2, v0

    .line 1529
    :try_start_118
    throw v2
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_119

    :catchall_119
    move-exception v0

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .registers 4

    .line 2590
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public writeLegacyPermissionStateTEMP()V
    .registers 1

    .line 0
    return-void
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 4

    .line 2341
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2342
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 2343
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    .line 2344
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionTrees(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    .line 2345
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    return-void
.end method
